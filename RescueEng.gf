--# -path=.:./engine:alltenses

concrete RescueEng of Rescue = MyConcrete  **
open ConstructorsEng, ParadigmsEng, StructuralEng, IrregEng, ConstructX, Prelude, (R=ResEng) in {

-- oper

lin

-- Adv

	suddenly	= ParadigmsEng.mkAdV "suddenly";
	early_tuesday_morning	= ParadigmsEng.mkAdv "early Tuesday morning";

-- AP

	surprising	= mkAP( mkA "surprising") ;
	local	= mkAP( mkA "local") ;

-- Conj


-- Det

	two	= mkDet( mkCard (mkNumeral n2_Unit));
	all	= ss "all";

-- N

	vehicle	= mkCN( mkN nonhuman (mkN "vehicle") );
	thief	= mkCN( mkN human (mkN "thief") );
	scene	= mkN2( mkN nonhuman (mkN "scene") ) of_PREP;
	river	= mkCN( mkN nonhuman (mkN "river") );
	police_department	= mkCN( mkN nonhuman (mkN "police department") );
	police_officer	= mkCN( mkN human (mkN "police officer") );
	officer	= mkCN( mkN human (mkN "officer") );
	life	= mkCN( mkN nonhuman (mkN "life" "lives") );
	control	= mkN2( mkN nonhuman (mkN "control") ) of_PREP;
	charge	= mkN2( mkN nonhuman (mkN "charge") ) against_RECIPIENTPREP;
	car_thief	= mkCN( mkN human (mkN "car thief") );
	car	= mkCN( mkN nonhuman (mkN "car") );
	accident	= mkCN( mkN nonhuman (mkN "accident") );

-- PN

	ontario	= mkPN( mkN nonhuman (mkN "Ontario") );

-- Prep

	to_LOCPREP	= mkPrep "to";
	into_LOCPREP	= mkPrep "into";
	in_LOCPREP	= mkPrep "in";
	from_SOURCEPREP	= mkPrep "from";
	for_ATTRIBUTEPREP	= mkPrep "for";
	back_to_LOCPREP	= mkPrep "back to";
	against_RECIPIENTPREP	= mkPrep "against";

-- Pron


-- Subj


-- V

	go	= mkV2 IrregEng.go_V back_to_LOCPREP;
	save	= mkV2( mkV "save") noPrep;
	rescue	= mkV2( mkV "rescue") noPrep;
	lose	= mkV2 IrregEng.lose_V noPrep;
	help	= mkVV( mkV "help") ;
	help	= mkVV( mkV "help") ;
	drive	= mkV2 IrregEng.drive_V into_LOCPREP;
	drop	= mkV2( mkV "drop") noPrep;
	chase	= mkV2( mkV "chase") noPrep;

}

-- vim: set ts=2 sts=2 sw=2 noet:
