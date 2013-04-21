<?php
namespace riotDecode\inibin\mapper;

class Attack {
	protected $mapping;

	public function __construct() {
		$this->mapping = [
			'3771724457' => ['MANA Cost LVL 1'],
			'3771724456' => ['MANA Cost LVL 2'],
			'3771724455' => ['MANA Cost LVL 3'],
			'3771724454' => ['MANA Cost LVL 4'],
			'3771724453' => ['MANA Cost LVL 5'],
			'2669813407' => ['Projectile Name'],
			'1456468249' => ['Projectile Speed'],
			'332266699' => ['Spell Range @LVL1'],
			'332266700' => ['Spell Range @LVL2'],
			'332266701' => ['Spell Range @LVL3'],
			'332266702' => ['Spell Range @LVL4'],
			'332266703' => ['Spell Range @LVL5'],
			'332266704' => ['Spell Range'],
			'2629301970' => ['Spell Cooldown @LVL5'],
			'2629301969' => ['Spell Cooldown @LVL4'],
			'2629301968' => ['Spell Cooldown @LVL3'],
			'2629301967' => ['Spell Cooldown @LVL2'],
			'2629301966' => ['Spell Cooldown @LVL1'],
			'1829373218' => ['Affection'],
			'844968125' => ['AP/AD Ratio ???'],
			'466816973' => ['Spell DMG / %ATT Speed Buff / %MoveSpeed Buff  @LVL1'],
			'4059954766' => ['Spell DMG / %ATT Speed Buff / %MoveSpeed Buff  @LVL2'],
			'3358125263' => ['Spell DMG / %ATT Speed Buff / %MoveSpeed Buff  @LVL3'],
			'2656295760' => ['Spell DMG / %ATT Speed Buff / %MoveSpeed Buff  @LVL4'],
			'1954466257' => ['Spell DMG / %ATT Speed Buff / %MoveSpeed Buff @LVL5'],
			'3091373677' => ['Spell Name'],
			'143853687' => ['X/Y/Z ???'],
			'3806805222' => ['Second cast range ???'],
			'3331302208' => ['I18N Level Up'],
			'3431853604' => ['I18N Description'],
			'2634919164' => ['I18N Tooltip'],
			'1805538005' => ['I18N Display Name'],
			'3848571446' => ['Name of Level 1'],
			'693168439' => ['Name of Level 2'],
			'1832732728' => ['Name of Level 3'],
			'2972297017' => ['Name of Level 4'],
			'4111861306' => ['Name of Level 5'],
			'956458299' => ['Name of Level 6'],
			'2059614685' => ['DDS File'],
			'1877491092' => ['DDS File'],
			'1746694807' => ['SPELL_SLOT'],
			'2933974746' => ['Spell width ???'],
			'278926620' => ['Default Range Indicator'],
			'227476435' => ['Other DMG @LVL5'],
			'929305938' => ['Other DMG @LVL4'],
			'1631135441' => ['Other DMG @LVL3'],
			'2332964944' => ['Other DMG @LVL2'],
			'1090971346' => ['Other DMG @LVL1'],
			'2637063921' => ['Duration'],
			'91820311' => ['Particle upon impact ??'],
			'2530870824' => ['Dash range ??'],
			'1090971346' => ['Buff/DEBuff Duration /DMG upon impact ?? @LVL5'],
			'1792800849' => ['Buff/DEBuff Duration /DMG upon impact ?? @LVL4'],
			'2494630352' => ['Buff/DEBuff Duration /DMG upon impact ?? @LVL3'],
			'3196459855' => ['Buff/DEBuff Duration /DMG upon impact ?? @LVL2'],
			'3898289358' => ['Buff/DEBuff Duration /DMG upon impact ?? @LVL1'],
			
			'3658948820' => ['Spell Duration @LVL5'],
			'2171299536' => ['Spell Duration @LVL4'],
			'1469470033' => ['Spell Duration @LVL3'],
			'767640530' => ['Spell Duration @LVL2'],
			'65811027' => ['Spell Duration @LVL1'],
			'2202397586' => ['AREA OF EFFECT RADIUS'],
			'3401378034' => ['Image file'],
			'1229951523' => ['Constant Cooldown'],
			'1114496522' => ['Spell created from'],
			'2295071549' => ['Hand/Weapon']
		];
	}

	public function matchesInibinFile($inibinFile) {
		$values = $inibinFile->getValues(false);

		return key_exists('1746694807', $values) && key_exists('1746694807', $values) && (strtoupper(substr($values['1746694807'], 0, 6)) == 'ATTACK' || strtoupper(substr($values['1746694807'], 0, 4)) == 'CRIT');
	}

	public function mapInibinKey($key) {
		return key_exists($key, $this->mapping) ? $this->mapping[$key] : null;
	}
}
?>