<?php
require_once __DIR__ . '/../index.php';
use PHPUnit\Framework\TestCase;

class IndexTest extends TestCase {
    public function testHello() {
        $this->assertEquals("Hello, Jenkins!", hello());
    }
}
