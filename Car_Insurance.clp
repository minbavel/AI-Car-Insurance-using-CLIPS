(deftemplate car (slot make) (slot model) (slot enginesize (type INTEGER)) (slot group (type INTEGER)))
(deftemplate owner (slot make) (slot model) (slot enginesize (type INTEGER)) (slot age (type INTEGER)) (slot value (type INTEGER)))
(deftemplate person (slot name) (slot gender) (slot age (type INTEGER)) (slot occupation))
(deftemplate job (slot occupation))
(deftemplate license (slot type))
(deftemplate insurance (slot type) (slot immobilizer) (slot park) (slot convictionyear (type INTEGER)) (slot convictionreason))
(deftemplate calc (slot group (type INTEGER)) (slot value (type INTEGER)) (slot type) (slot gender) (slot personage (type INTEGER)) (slot carage (type INTEGER)) (slot occupation) (slot immobilizer) (slot park) (slot convictionyear (type INTEGER)) (slot convictionreason))

(deffacts car-type
	(car (make mazda) (model rx8) (enginesize 1300) (group 3))
	(car (make mazda) (model rx8) (enginesize 3300) (group 2))
	(car (make mazda) (model mx5) (enginesize 1700) (group 3))
	(car (make mazda) (model mx5) (enginesize 2300) (group 2))
	(car (make mazda) (model sport) (enginesize 2100) (group 3))
	
	(car (make bmw) (model x1) (enginesize 2000) (group 4))
	(car (make bmw) (model x2) (enginesize 2000) (group 4))
	(car (make bmw) (model x3) (enginesize 2000) (group 4))
	(car (make bmw) (model x4) (enginesize 2000) (group 4))
	(car (make bmw) (model x5) (enginesize 2000) (group 4))
	
	(car (make porsche) (model 911) (enginesize 3000) (group 2))
	(car (make porsche) (model macan) (enginesize 2300) (group 2))
	(car (make porsche) (model cayenne) (enginesize 1400) (group 2))
	(car (make porsche) (model 911) (enginesize 2000) (group 3))
	(car (make porsche) (model 911) (enginesize 1000) (group 5))
	
	(car (make honda) (model accord) (enginesize 900) (group 6))
	(car (make honda) (model civic) (enginesize 1900) (group 6))
	(car (make honda) (model fit) (enginesize 2000) (group 6))
	(car (make honda) (model r) (enginesize 1300) (group 6))
	(car (make honda) (model accord) (enginesize 2500) (group 5))
	
	(car (make ferrari) (model spider) (enginesize 2500) (group 1))
	(car (make ferrari) (model spider) (enginesize 1000) (group 5))
	(car (make ferrari) (model pista) (enginesize 2900) (group 1))
	(car (make ferrari) (model pista) (enginesize 1400) (group 5))
	(car (make ferrari) (model f8) (enginesize 3500) (group 1))
)

(deffacts occupation-of
	(job (occupation student))
	(job (occupation teacher))
	(job (occupation lecturer))
)


(defglobal
			?*value1* = "nil"
			?*value2* = "nil"
			?*value3* = "nil"
			?*value4* = "nil"
			?*value5* = "nil"
			?*value6* = "nil"
			?*valueYN* = "nil"
			?*valuetemp* = -1
			?*temp1* = "nil"
			?*temp2* = "nil"
			?*temp3* = "nil"
			?*temp4* = "nil"
			?*temp5* = "nil"
			?*temp6* = "nil"
			?*temp7* = "nil"
			?*temp8* = "nil"
			?*temp9* = "nil"
			?*temp10* = "nil"
			?*temp11* = "nil"
			?*temp12* = "nil"
			?*temp13* = "nil"
			?*temp14* = "nil"
			?*temp15* = "nil"
			?*temp16* = "nil"
			?*temp17* = "nil"
			?*temp18* = "nil"
			?*temp19* = "nil"
			?*temp20* = "nil"
			?*temp21* = "nil"
			?*temp22* = "nil"
			?*temp23* = "nil"
			?*temp24* = "nil"
			?*check1* = "nil"
			?*check2* = "nil"
			?*check3* = "nil"
			?*check4* = "nil"
			?*check5* = "nil"
			?*check6* = "nil"
)

(defrule input
	(declare(salience 10))
	=>
	(printout t "THIS IS AN AUTOMATED CAR INSURANCE SYSTEM" crlf)
	(printout t "Hello There" crlf)
	(printout t "Would you like to Use our system to Get Your INSURANCE" crlf)
	(printout t "Type Y-if you would like to continue and N-if you want to QUIT!!~~" crlf)
	(bind ?*valueYN*  (read t))
	(if (eq ?*valueYN* N)
		
	then
	(printout t "Fine You can try our system later" crlf)
	(halt)
	else
	(assert (continue))))
	
(defrule next
	(continue)
	=>
	(printout t "Great Decision! WE WILL MAKE SURE YOUR WONT REGRET IT!!!" crlf)
	(printout t "Please Enter Your Name" crlf)
	(bind ?*value1*  (read t))
	(printout t "Please Enter Your Gender" crlf)
	(bind ?*value2*  (read t))
	(printout t "Please Enter Your Age" crlf)
	(bind ?*value3*  (read t))
	(printout t "Please Enter Your Occupation" crlf)
	(bind ?*value4*  (read t))
	(if (or (eq ?*value4* student)
			(eq ?*value4* teacher)
			(eq ?*value4* lecturer))
	then
		(assert (person (name ?*value1*) (gender ?*value2*) (age ?*value3*) (occupation ?*value4*)))
		(printout t "Everything Seems Good. Thanks For the INFORMATION" crlf)
	else
		(printout t "INVALID OCCUPATION  PLEASE TRY AGAIN!!!!" crlf)
		(halt))
	(assert (continue2))
)

(defrule next2
	(continue2)
	=>
	(printout t "Now Lets Get Your Car INFORMATION" crlf)
	(printout t "Please Enter the car Make" crlf)
	(bind ?*check1*  (read t))
	(printout t "Please Enter the car Model" crlf)
	(bind ?*check2*  (read t))
	(printout t "Please Enter the car Engine Size in cc" crlf)
	(bind ?*check3*  (read t))
	(printout t "Please Enter the car Age" crlf)
	(bind ?*check4*  (read t))
	(printout t "Please Enter the car Value" crlf)
	(bind ?*check5*  (read t))
	(if (or (eq ?*check2* rx8)
			(eq ?*check2* mx5)
			(eq ?*check2* x1)
			(eq ?*check2* x2)
			(eq ?*check2* x3)
			(eq ?*check2* x4)
			(eq ?*check2* x5)
			(eq ?*check2* 911)
			(eq ?*check2* macan)
			(eq ?*check2* cayenne)
			(eq ?*check2* accord)
			(eq ?*check2* civic)
			(eq ?*check2* fit)
			(eq ?*check2* r)
			(eq ?*check2* spider)
			(eq ?*check2* pista)
			(eq ?*check2* f8)
		)
	then
		(assert (owner (make ?*check1*) (model ?*check2*) (enginesize ?*check3*) (age ?*check4*) (value ?*check5*)))
		(printout t "Everything Seems Good. Thanks For the INFORMATION" crlf)
	else
		(printout t "INVALID CAR MODEL  PLEASE TRY AGAIN!!!!" crlf)
		(halt))
	(assert (continue3))
)

(defrule next3
	(continue3)
	=>
	(printout t "Please Enter what kind of Insurance you need" crlf)
	(printout t "ThirdParty or ComprehensiveCover" crlf)
	(bind ?*value1*  (read t))
	(printout t "Is an Vehicle Immobilizer installed in your Car? (Y/N)" crlf)
	(bind ?*value2*  (read t))
	(printout t "Is the Car Parked inside the Garage at Night? (Y/N)" crlf)
	(bind ?*value3*  (read t))
	(printout t "Does the Owner of the Car have any Driving Conviction within the last 3 Years? (Y/N)" crlf)
	(bind ?*value4*  (read t))
	(if (eq ?*value4* N)
	then
	(printout t "Enter the Number of Years of no-claims bonus the insured has acquired" crlf)
	(bind ?*value5*  (read t))
	(assert (insurance (type ?*value1*) (immobilizer ?*value2*) (park ?*value3*) (convictionyear ?*value5*) (convictionreason ?*valuetemp*)))
	else
	(printout t "Enter your Driving Conviction" crlf)
	(bind ?*value6*  (read t))
	(assert (insurance (type ?*value1*) (immobilizer ?*value2*) (park ?*value3*) (convictionyear ?*valuetemp*) (convictionreason ?*value6*)))
	)
	(printout t "IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII" crlf)
	(printout t "           YOUR INSURANCE BILL IS             " crlf)
	(printout t "IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII" crlf)
	(assert (continue4))
)

(defrule next4
	(continue4)
	(insurance (type ?ty) (immobilizer ?immo) (park ?pa) (convictionyear ?con) (convictionreason ?conr))
	(car (make ?mk) (model ?md) (enginesize ?es) (group ?grp))
	(owner (make ?owmk) (model ?owmd) (enginesize ?owes) (age ?owag) (value ?owval))
	(person (name ?nm) (gender ?gn) (age ?ag) (occupation ?occu))
	=>
	(if (and (eq ?mk ?owmk)
			 (eq ?md ?owmd)
			 (eq ?es ?owes))
	then
		(assert (calc(group ?grp) (value ?owval) (type ?ty) (gender ?gn) (personage ?ag) (carage ?owag) (occupation ?occu) (immobilizer ?immo) (park ?pa) (convictionyear ?con) (convictionreason ?conr)))
	(assert (continue5)))
)

(defrule next5
	(continue5)
	(calc (group ?grp) (value ?owval) (type ?ty) (gender ?gn) (personage ?ag) (carage ?owag) (occupation ?occu) (immobilizer ?immo) (park ?pa) (convictionyear ?con) (convictionreason ?conr))
	=>
	(if (eq ?grp 1) 
	then
	(bind ?*temp1* (* ?owval 0.1)))
	(if (eq ?grp 2) 
	then
	(bind ?*temp1* (* ?owval 0.11)))
	(if (eq ?grp 3) 
	then
	(bind ?*temp1* (* ?owval 0.12)))
	(if (eq ?grp 4) 
	then
	(bind ?*temp1* (* ?owval 0.13)))
	(if (eq ?grp 5) 
	then
	(bind ?*temp1* (* ?owval 0.5)))
	(if (eq ?grp 6) 
	then
	(bind ?*temp1* (* ?owval 0.2)))
	
	(bind ?*temp2* (* ?owval 0.1 ))
	(bind ?*temp3* (- ?*temp1* ?*temp2*))
	(printout t "Charge of Main Insurance is:            £" ?*temp2* crlf)
	(printout t "Charge Depending on Group " ?grp " is:         £" ?*temp3* crlf)
	
	(if (> ?owag 7)
	then
	(bind ?*temp4* (* ?*temp1* 1.05))
	else
	(bind ?*temp4* (* ?*temp1* 1)))
	
	(bind ?*temp5* (- ?*temp4* ?*temp1*))
	(printout t "Charge for Car Age is:                  £" ?*temp5* crlf)
	
	(if (eq ?ty ThirdParty)
	then
	(bind ?*temp6* (* ?*temp4* 0.3))
	(printout t "Third Party Insurance Costage:          £" ?*temp6* crlf)
	else
	(bind ?*temp6* (+ ?*temp4* 0))
	)
	(printout t "IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII" crlf)
	(printout t "III        INSURANCE COST               £" ?*temp6* crlf)
	(printout t "IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII" crlf)
	(printout t "           DISCOUNT CALCULATION               " crlf)
	(printout t "IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII" crlf)
	
	(if (or (eq ?immo Y)
			(eq ?pa   Y))
	then
	(bind ?*temp8* (* ?*temp6* 0.05))
	(bind ?*temp9* (- ?*temp6* ?*temp8*))
	(bind ?*temp10* (- ?*temp9* ?*temp6*))
	(printout t "Discount For Having an Immob or Prak:   £" ?*temp10* crlf)
	else
	(bind ?*temp9* (+ ?*temp6* 0))
	)
	
	(if (or (eq ?occu teacher)
			(eq ?occu lecturer))
	then
	(bind ?*temp11* (* ?*temp9* 0.03))
	(bind ?*temp12* (- ?*temp9* ?*temp11*))
	(bind ?*temp13* (- ?*temp12* ?*temp9*))
	(printout t "Discount For Occupation:                £" ?*temp13* crlf)
	else
	(bind ?*temp12* (+ ?*temp9* 100))
	(printout t "Occupation Charge:                      £100" crlf)
	)
	
	(if (>= ?ag 55)
	then
	(bind ?*temp14* (* ?*temp12* 0.1))
	(bind ?*temp15* (- ?*temp12* ?*temp14*))
	(bind ?*temp16* (- ?*temp15* ?*temp12*))
	(printout t "Discount For Age:                       £" ?*temp16* crlf))
	
	(if (< ?ag 21)
	then
	(bind ?*temp14* (* ?*temp12* 0.2))
	(bind ?*temp15* (+ ?*temp12* ?*temp14*))
	(bind ?*temp16* (- ?*temp15* ?*temp12*))
	(printout t "Additional Age Cost:                    £" ?*temp16* crlf))
	
	(if (and (>= ?ag 21)
			 (< ?ag 26))
	then
	(bind ?*temp14* (* ?*temp12* 0.1))
	(bind ?*temp15* (+ ?*temp12* ?*temp14*))
	(bind ?*temp16* (- ?*temp15* ?*temp12*))
	(printout t "Additional Age Cost:                    £" ?*temp16* crlf))
	
	(if (and (>= ?ag 27)
			 (< ?ag 54))
	then
	(bind ?*temp14* (* ?*temp12* 1))
	(bind ?*temp15* (+ ?*temp12* 0))
	(bind ?*temp16* (- ?*temp15* ?*temp12*))
	(printout t "Additional Age Cost:                    £" ?*temp16* crlf))
	
	(if (eq ?conr speeding)
	then
	(bind ?*temp17* (* ?*temp15* 0))
	(bind ?*temp18* (+ ?*temp15* ?*temp17*))
	(bind ?*temp19* (- ?*temp18* ?*temp15*))
	(printout t "Speed Driving Charge:                   £" ?*temp19* crlf))
	
	(if (eq ?conr careless)
	then
	(bind ?*temp17* (* ?*temp15* 0.1))
	(bind ?*temp18* (+ ?*temp15* ?*temp17*))
	(bind ?*temp19* (- ?*temp18* ?*temp15*))
	(printout t "Careless Driving Charge:                £" ?*temp19* crlf))
	
	(if (eq ?conr dangerous)
	then
	(bind ?*temp17* (* ?*temp15* 0.2))
	(bind ?*temp18* (+ ?*temp15* ?*temp17*))
	(bind ?*temp19* (- ?*temp18* ?*temp15*))
	(printout t "Dangerous Driving Charge:               £" ?*temp19* crlf))
	
	(if (eq ?con 0)
	then
	(bind ?*temp17* (+ ?*temp15* 0))
	(bind ?*temp18* (- ?*temp15* ?*temp17*))
	(bind ?*temp19* (- ?*temp18* ?*temp15*))
	(printout t "No-Claim Bonus Discount: " ?con " year [0%]    £" ?*temp19* crlf))
	
	(if (eq ?con 1)
	then
	(bind ?*temp17* (* ?*temp15* 0.1))
	(bind ?*temp18* (- ?*temp15* ?*temp17*))
	(bind ?*temp19* (- ?*temp18* ?*temp15*))
	(printout t "No-Claim Bonus Discount: " ?con " year [10%]   £" ?*temp19* crlf))
	
	(if (eq ?con 2)
	then
	(bind ?*temp17* (* ?*temp15* 0.15))
	(bind ?*temp18* (- ?*temp15* ?*temp17*))
	(bind ?*temp19* (- ?*temp18* ?*temp15*))
	(printout t "No-Claim Bonus Discount: " ?con " year [15%]   £" ?*temp19* crlf))
	
	(if (eq ?con 3)
	then
	(bind ?*temp17* (* ?*temp15* 0.3))
	(bind ?*temp18* (- ?*temp15* ?*temp17*))
	(bind ?*temp19* (- ?*temp18* ?*temp15*))
	(printout t "No-Claim Bonus Discount: " ?con " year [30%]   £" ?*temp19* crlf))
	
	(if (eq ?con 4)
	then
	(bind ?*temp17* (* ?*temp15* 0.45))
	(bind ?*temp18* (- ?*temp15* ?*temp17*))
	(bind ?*temp19* (- ?*temp18* ?*temp15*))
	(printout t "No-Claim Bonus Discount: " ?con " year [45%]   £" ?*temp19* crlf))
	
	(if (> ?con 4)
	then
	(bind ?*temp17* (* ?*temp15* 0.60))
	(bind ?*temp18* (- ?*temp15* ?*temp17*))
	(bind ?*temp19* (- ?*temp18* ?*temp15*))
	(printout t "No-Claim Bonus Discount: " ?con " year [60%]   £" ?*temp19* crlf))
	
	(if (eq ?gn female)
	then
	(bind ?*temp20* (- ?*temp18* 50))
	(printout t "Female Discount:                        £-50"  crlf)
	else
	(bind ?*temp20* (+ ?*temp18* 0))
	)
	 
	
	(printout t "IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII" crlf)
	(printout t "III   TOTAL INSURANCE COST              £" ?*temp20* crlf)
	(printout t "IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII" crlf)
	(printout t "" crlf)
	(printout t "      THANK YOU FOR USING OUR SYSTEM" crlf)
	(printout t "        HOPE YOU HAVE A SAFE DRIVE" crlf)
	(printout t "" crlf)
	(printout t "IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII" crlf)

)

	
	
	
	
	
	
	
	
	
	
	
	
	