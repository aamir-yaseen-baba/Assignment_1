<?php

use Drupal\DrupalExtension\Context\RawDrupalContext;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use Behat\Behat\Tester\Exception\PendingException;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends RawDrupalContext {

  /**
   * Initializes context.
   *
   * Every scenario gets its own context instance.
   * You can also pass arbitrary arguments to the
   * context constructor through behat.yml.
   */
  public function __construct() {
  }

  /**
   * @Given /^I expand "\#edit\-advanced" details element$/
   * @throws Exception
   */
  public function iExpandDetailsElement()
  {
    $function = <<<JS
        (
            function()
            {
                document.querySelector("#edit-advanced").scrollIntoView();
            }, function()
            {
               document.querySelector("#edit-advanced").open = true;
            })()
JS;
    try
    {
      $this->getSession()->executeScript($function);
    }
    catch (Exception $e)
    {
      throw new \Exception(message:$e);
    }
  }

  /**
   * @Given /^I wait (\d+) seconds$/
   */
  public function iWaitSeconds($arg1)
  {
    sleep($arg1);
  }


}
