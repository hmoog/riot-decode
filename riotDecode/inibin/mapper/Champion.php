<?php
namespace riotDecode\inibin\mapper;

class Champion {
	protected $mapping;

	public function __construct() {
		$this->mapping = [
			'2921476548' => ['ID'],
			'767627316'  => ['RANK_ATTACK'],
			'2786390348' => ['RANK_DEFENSE'],
			'1040761625' => ['RANK_MAGIC'],
			'105898023'  => ['RANK_DIFFICULTY'],
			'4146314945' => ['CLASSIFICATION', function($value) { return $value ? explode(',', $value) : []; }],
			'82690155'   => ['I18N_DISPLAYNAME'],
			'3747042364' => ['I18N_DESCRIPTION'],
			'4243215483' => ['I18N_LORE'],
			'70667385'   => ['I18N_TIPS'],
			'70667386'   => ['I18N_OPPOSING_TIPS'],
			'1880118880' => ['BASE_DAMAGE'],
			'742042233'  => ['BASE_HP'],
			'742370228'  => ['BASE_MANA'],
			'1081768566' => ['BASE_MOVEMENT_SPEED'],
			'2599053023' => ['BASE_ARMOR'],
			'1395891205' => ['BASE_MAGIC_RESIST'],
			'4128291318' => ['BASE_HP_REGEN'],
			'619143803'  => ['BASE_MANA_REGEN'],
			'2191293239' => ['BASE_ATTACK_SPEED', function($value) { return 0.625 * (1.0 - $value); }],
			'1387461685' => ['BASE_RANGE'],
			'1139868982' => ['PER_LEVEL_DAMAGE'],
			'3306821199' => ['PER_LEVEL_HP'],
			'1003217290' => ['PER_LEVEL_MANA'],
			'1608827366' => ['PER_LEVEL_ARMOR'],
			'4100866733' => ['PER_LEVEL_MAGIC_RESIST'],
			'3062102972' => ['PER_LEVEL_HP_REGEN'],
			'1248483905' => ['PER_LEVEL_MANA_REGEN'],
			'770205030'  => ['PER_LEVEL_ATTACK_SPEED', function($value) { return 0.01 * $value; }],
			'404599689'  => ['SPELL_NAME_1'],
			'404599690'  => ['SPELL_NAME_2'],
			'404599691'  => ['SPELL_NAME_3'],
			'404599692'  => ['SPELL_NAME_4'],
			'3810483779' => ['ICON_PASSIVE'],
			'3086385998' => ['ATTACK_POSSIBLE'],
			'3310611270' => ['SKIN_MATERIAL']
		];
	}

	public function matchesInibinFile($inibinFile) {
		$values = $inibinFile->getValues(false);

		return key_exists('404599689', $values)  && $values['404599689']  != '' && $values['404599689']  != 'BaseSpell' && key_exists('404599690', $values)  && $values['404599690']  != '' && $values['404599690']  != 'BaseSpell' && key_exists('404599691', $values)  && $values['404599691']  != '' && $values['404599691']  != 'BaseSpell' && key_exists('404599692', $values)  && $values['404599692']  != '' && $values['404599692']  != 'BaseSpell' && key_exists('3086385998', $values) && strtolower($values['3086385998']) == "true";
	}

	public function mapInibinKey($key) {
		return key_exists($key, $this->mapping) ? $this->mapping[$key] : null;
	}
}
?>