from selenium.webdriver.common.by import By
from tests.resources.home_elements import SEARCH_FIELD_LOCATOR, SEARCH_BUTTON_LOCATOR

class SearchPage:
    def __init__(self, driver):
        """
        Inicializa a classe SearchPage com a instância do WebDriver.
        :param driver: Instância do Selenium WebDriver.
        """
        self.driver = driver

    def input_search_term(self, term):
        """
        Insere o termo de busca no campo de busca.
        :param term: O termo a ser inserido no campo de busca.
        """
        search_input = self.driver.find_element(By.CSS_SELECTOR, SEARCH_FIELD_LOCATOR)
        search_input.clear()  # Limpa o campo antes de inserir o texto
        search_input.send_keys(term)

    def click_search_button(self):
        """
        Clica no botão de busca.
        """
        search_button = self.driver.find_element(By.CSS_SELECTOR, SEARCH_BUTTON_LOCATOR)
        search_button.click()

    def clear_search_field(self):
        """
        Limpa o campo de busca.
        """
        search_input = self.driver.find_element(By.CSS_SELECTOR, SEARCH_FIELD_LOCATOR)
        search_input.clear()