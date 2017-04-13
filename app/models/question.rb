class Question < ActiveRecord::Base
  validates :text, :poll_id, presence: true

  belongs_to :poll,
  primary_key: :id,
  foreign_key: :poll_id,
  class_name: :Poll

  has_many :answer_choices,
  primary_key: :id,
  foreign_key: :question_id,
  class_name: :AnswerChoice

  has_many :responses,
    through: :answer_choices,
    source: :responses

  def results
    results = Question.find_by_sql(<<-SQL, self.id)
    SELECT
      answer_choices.*, COUNT(*)
    FROM
      answer_choices
      LEFT JOIN responses ON answer_choices.id = responses.answer_choice_id
    WHERE
      question_id = ?
    GROUP BY
      answer_choice_id




    SQL



    # choices = self.answer_choices.includes(:responses)
    #
    # results = {}
    #
    # choices.each do |choice|
    #   results[choice.text] = choice.responses.length
    # end
    #
    # results
  end


end
