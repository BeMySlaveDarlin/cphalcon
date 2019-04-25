<?php
declare(strict_types=1);

/**
 * This file is part of the Phalcon Framework.
 *
 * (c) Phalcon Team <team@phalconphp.com>
 *
 * For the full copyright and license information, please view the LICENSE.txt
 * file that was distributed with this source code.
 */

namespace Phalcon\Test\Unit\Image\Adapter\Imagick;

use Phalcon\Image\Adapter\Imagick;
use Phalcon\Test\Fixtures\Traits\ImagickTrait;
use UnitTester;
use function dataFolder;
use function outputFolder;

/**
 * Class RotateCest
 */
class RotateCest
{
    use ImagickTrait;

    /**
     * Tests Phalcon\Image\Adapter\Imagick :: rotate()
     *
     * @param UnitTester $I
     *
     * @author Phalcon Team <team@phalconphp.com>
     * @since  2016-02-19
     */
    public function imageAdapterImagickRotate(UnitTester $I)
    {
        $I->wantToTest('Image\Adapter\Imagick - rotate()');

        $image = new Imagick(
            dataFolder('assets/images/phalconphp.jpg')
        );

        $image->setResourceLimit(6, 1);

        // Rotate 45 degrees clockwise
        $image->rotate(45)->save(outputFolder('tests/image/imagick/rotate.jpg'));

        $I->amInPath(
            outputFolder('tests/image/imagick/')
        );

        $I->seeFileFound('rotate.jpg');

        $I->assertTrue(
            $image->getWidth() > 200
        );

        $I->assertTrue(
            $image->getHeight() > 200
        );

        $I->safeDeleteFile('rotate.jpg');
    }
}
