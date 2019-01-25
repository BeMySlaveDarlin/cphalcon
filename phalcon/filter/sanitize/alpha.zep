
/**
 * This file is part of the Phalcon Framework.
 *
 * (c) Phalcon Team <team@phalconphp.com>
 *
 * For the full copyright and license information, please view the LICENSE.txt
 * file that was distributed with this source code.
 */

namespace Phalcon\Filter\Sanitize;

use Phalcon\Filter\SanitizerInterface;
use Phalcon\Filter\Sanitize\AbstractSanitizer;

/**
 * Phalcon\Filter\Sanitize\Alpha
 *
 * Sanitizes a value to an alpha value
 */
class Alpha extends AbstractSanitizer implements SanitizerInterface
{
	/**
	 * @var mixed input The text to sanitize
	 */
	public function __invoke()
	{
		var input;

		let input = this->checkArguments(func_get_args(), 1);

		return preg_replace("/[^A-Za-z]/", "", input);
	}
}
