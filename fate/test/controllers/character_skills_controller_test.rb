require 'test_helper'

class CharacterSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character_skill = character_skills(:one)
  end

  test "should get index" do
    get character_skills_url, as: :json
    assert_response :success
  end

  test "should create character_skill" do
    assert_difference('CharacterSkill.count') do
      post character_skills_url, params: { character_skill: { alertness: @character_skill.alertness, athletics: @character_skill.athletics, character_id: @character_skill.character_id, conviction: @character_skill.conviction, discipline: @character_skill.discipline, endurance: @character_skill.endurance, presence: @character_skill.presence } }, as: :json
    end

    assert_response 201
  end

  test "should show character_skill" do
    get character_skill_url(@character_skill), as: :json
    assert_response :success
  end

  test "should update character_skill" do
    patch character_skill_url(@character_skill), params: { character_skill: { alertness: @character_skill.alertness, athletics: @character_skill.athletics, character_id: @character_skill.character_id, conviction: @character_skill.conviction, discipline: @character_skill.discipline, endurance: @character_skill.endurance, presence: @character_skill.presence } }, as: :json
    assert_response 200
  end

  test "should destroy character_skill" do
    assert_difference('CharacterSkill.count', -1) do
      delete character_skill_url(@character_skill), as: :json
    end

    assert_response 204
  end
end
