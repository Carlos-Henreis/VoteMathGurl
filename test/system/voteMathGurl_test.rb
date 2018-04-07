require "application_system_test_case"

class CorrectionTest < ApplicationSystemTestCase
  test "Corrige" do
    inesLinda = true
    qtdVote = 0
    while inesLinda
      driver = Capybara.current_session.driver
      driver.browser.manage.delete_all_cookies
      Capybara.always_include_port = false
      Capybara.reset_sessions!
      visit "https://www.youfestawards.pt/gala/"
      mathGurl = find(:xpath, "/html/body/div[2]/div/div/div/section[4]/div/div/div/div/div/div[2]/div/div/form/div[1]/ul/li[3]")
      begin
        voteButton = find(:xpath, "/html/body/div[2]/div/div/div/section[4]/div/div/div/div/div/div[2]/div/div/form/div[2]/button")
        mathGurl.click
        voteButton.click
        qtdVote+=1
        pp "Quantidade de vezes votadas:#{qtdVote}"
      rescue
        Capybara.refresh
      end
    end

  end
end
