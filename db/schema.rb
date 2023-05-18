# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_17_211514) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidates", force: :cascade do |t|
    t.string "CandidateName"
    t.string "CandidateSurname"
    t.date "CandidateBirth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "election_organizers", force: :cascade do |t|
    t.bigint "Election_id"
    t.bigint "Organizer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Election_id"], name: "index_election_organizers_on_Election_id"
    t.index ["Organizer_id"], name: "index_election_organizers_on_Organizer_id"
  end

  create_table "elections", force: :cascade do |t|
    t.string "type"
    t.datetime "startTime"
    t.datetime "endTime"
    t.integer "maxVotesPerVoter"
    t.float "voterTurnout"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "group_elections", force: :cascade do |t|
    t.bigint "Group_id"
    t.bigint "Election_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Election_id"], name: "index_group_elections_on_Election_id"
    t.index ["Group_id"], name: "index_group_elections_on_Group_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "GroupName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizers", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.date "birth"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.bigint "Election_id"
    t.bigint "Candidate_id"
    t.integer "NumVotes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Candidate_id"], name: "index_results_on_Candidate_id"
    t.index ["Election_id"], name: "index_results_on_Election_id"
  end

  create_table "voter_groups", force: :cascade do |t|
    t.bigint "Voter_id"
    t.bigint "Group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Group_id"], name: "index_voter_groups_on_Group_id"
    t.index ["Voter_id"], name: "index_voter_groups_on_Voter_id"
  end

  create_table "voters", force: :cascade do |t|
    t.string "VoterPESEL"
    t.string "VoterName"
    t.string "VoterSurname"
    t.date "VoterBirth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", force: :cascade do |t|
    t.bigint "Voter_id"
    t.bigint "Election_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Election_id"], name: "index_votes_on_Election_id"
    t.index ["Voter_id"], name: "index_votes_on_Voter_id"
  end

end
