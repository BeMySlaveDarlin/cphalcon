
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

/**
 * Phalcon\Filter\Sanitize\Regex
 *
 * Sanitizes a value performing preg_replace
 */
class Regex extends AbstractSanitizer implements SanitizerInterface
{
	/**
	 * @var mixed input The text to sanitize
	 */
	public function __invoke()
	{
		var input;

		let input = this->checkArguments(func_get_args(), 3);

		return preg_replace(input[1], input[2], input[0]);
	}
}
