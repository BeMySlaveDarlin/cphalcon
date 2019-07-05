
extern zend_class_entry *phalcon_collection_readonly_ce;

ZEPHIR_INIT_CLASS(Phalcon_Collection_ReadOnly);

PHP_METHOD(Phalcon_Collection_ReadOnly, remove);
PHP_METHOD(Phalcon_Collection_ReadOnly, set);

ZEND_BEGIN_ARG_INFO_EX(arginfo_phalcon_collection_readonly_remove, 0, 0, 1)
#if PHP_VERSION_ID >= 70200
	ZEND_ARG_TYPE_INFO(0, element, IS_STRING, 0)
#else
	ZEND_ARG_INFO(0, element)
#endif
ZEND_END_ARG_INFO()

ZEND_BEGIN_ARG_INFO_EX(arginfo_phalcon_collection_readonly_set, 0, 0, 2)
#if PHP_VERSION_ID >= 70200
	ZEND_ARG_TYPE_INFO(0, element, IS_STRING, 0)
#else
	ZEND_ARG_INFO(0, element)
#endif
	ZEND_ARG_INFO(0, value)
ZEND_END_ARG_INFO()

ZEPHIR_INIT_FUNCS(phalcon_collection_readonly_method_entry) {
	PHP_ME(Phalcon_Collection_ReadOnly, remove, arginfo_phalcon_collection_readonly_remove, ZEND_ACC_PUBLIC)
	PHP_ME(Phalcon_Collection_ReadOnly, set, arginfo_phalcon_collection_readonly_set, ZEND_ACC_PUBLIC)
	PHP_FE_END
};
