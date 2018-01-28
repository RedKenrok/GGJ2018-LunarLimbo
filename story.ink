->normal_day


===normal_day===
Good morning, commander. Ava here, to give you your first refresher course. #char_ava #delay_2
->first_things

=first_things
First things first. Our communication system is quite simple. Say the name of the person you mean to address and the system will make sure your transmission goes their way. So in this case, if you wish to reply to me, first say Ava and then the message you want to send me. Do you understand? #char_ava
    *ava[\[Yes, affirmative, of course, no problem, sure, yay, alright, understood, understand, ok, correct, go on, continue, yeah, got it, get it\]]
    +ava[\[No, not, what, negative, nay, not understand, not understood, not ok, not correct, don't, wait, nah\]]
        ->first_things
- You are in orbit over the moon, with two researchers down on the surface. It is your job to make sure they get the information and orders they need. You are in command. I will also occasionally be providing you with information. Still with me so far? #char_ava
    *ava[\[Yes, affirmative, of course,no problem, sure, yay, alright, understood, understand, ok, correct, continue, go on, yeah, got it, get it, still, with you\]]
        Good! Your team on the ground consists of Alexa and Christina. Both are researchers. They are about to head out on their usual morning research run.<> #char_ava
    *ava[\[No, not, what, negative, nay, not understood, not understand, not ok, don't, wait, nah\]]
        Well, you are the leader of a small research expedition to our moon, which is dangerous and unexplored. You have two researchers on the surface. Alexa and Christina. Your job is keeping them safe and to relay information between them and me. I am back on the planet surface, functioning as ground control.<> #char_ava
- Your job today is the same as most days. Relaying interesting information to me and guiding the mission below. I've got most sensors on this side and I might be able to provide you with important information. Like right now, I see your team is waiting by the airlock, ready to go. You should tell Alexa to get going.
    *alexa[\[going, go, leave, move, get, advance, depart, moving, to work, head out\]]
- Good morning to you too, boss, I will head out then. The skyline looks a little more loaded than usual, but it should not be any trouble. #char_alexa
Hey commander. I'll get going too. I Will let you know if there's anything new worth mentioning. #char_christina #delay_3
Ah, very good. I see both of them have moved out of the base and are heading south in their buggies. Good work, commander. #char_ava #delay_2
Hey boss, could you tell Ava there are some new green crystals down here? #char_alexa
    *ava[\[crystal, crystals, green, new\]]
        - Crystals? Tell them to be careful, those could  explode.  #char_ava #delay_2
            *alexa[\[careful, caution, cautious, alert, attentive, deliberation, explode, explosive, avoid, don't touch\]]
                Got it, boss. I'll steer clear of them for now.#char_alexa
//CRYSTALS NOT IDEAL, weird that researcher doesn't know about them.
    
->buggy_breaks


===buggy_breaks===
Commander, my buggy just broke down, do you want me to try to fix it or go on on foot? #char_christina 
    *christina [\[Walk, leave, go, on foot, don't fix, don't repair, do not fix, don't mend, do not mend\]]
        ->walk_on 
    *christina [\[don't walk, do not walk, do not leave, don't leave, Repair, fix, mend, restore, stay\]] 
        ->fix_it 
 
 ==walk_on==
 Okay, commander. I'll move on on foot. #char_christina #delay_4
->storm_hits


==fix_it==
Right.. I'll take a look #char_christina #delay_1
Driveshaft seems to be disconnected. How do I repair this, can you ask Ava? #char_christina
    *ava [\[Driveshaft, drive, shaft, fix, repair, disconnected, check, buggy, broke, broken\]]
        - Broken buggy? They'll need supplies from the base to fix it. Just tell them to walk for now.#char_ava
            *christina [\[Can't fix, can't repair,can't mend, can not mend, can not repair, can not fix, walk, don't\]]
                - Alright, walking instead. #char_christina
    
->storm_hits


===storm_hits===
We are getting rough weather here, sand everywhere. We should head back. What do you want us to do, boss? #char_alexa #effect_storm.ogg
Wait, she needs to come pick me up in the buggy, it's a long walk still. #char_christina #delay_1 #effect_storm.ogg
Can I go pick her up, boss? #char_alexa #effect_storm.ogg
    *alexa [\[Yes, pick, go ahead, go, alright, sure, affirmative, yay, ok, moving, going, yeah\]]
        Alright, I am on my way. #char_alexa #delay_2 #effect_storm.ogg
    *alexa [\[No, can't, keep going, keep moving, shouldn't, not, negative, nay, don't, nah\]]
        No, sorry boss, I will not leave Christina behind. I am going to get her. #char_alexa #delay_2 #effect_storm.ogg
- ->storm_worsens


===storm_worsens===
It's getting worse down here There's sand everywhere and heavy gales! #char_christina #delay_1 #effect_storm.ogg
I'm seeing a large sandstorm approaching our girls on the ground. Get them to safety. #char_ava #delay_1
Where should we go, to homebase or the shuttle? Base is closer, but we might get stranded there if the storm gets worse. #char_christina #effect_storm_heavy.ogg
    *alexa[\[Home, base, homebase, not shuttle, don't shuttle\]]
        Alright, I'll start walking to the base, where is Alexa? I'm getting impatient, my feet hurt. #char_christina #delay_2 #effect_storm_heavy.ogg
    
    *christina[\[Home, base, homebase, not shuttle, don't shuttle\]]
        Alright, I'll start walking to the base, where is Alexa? I'm getting impatient, my feet hurt. #char_christina #delay_2 #effect_storm_heavy.ogg
        
    *alexa[\[don't home, not home, don't base, not base, don't homebase, not homebase, shuttle\]]
        Alright, I'll start walking to the shuttle, where is Alexa? I'm getting impatient, my feet hurt.  #char_christina #delay_2 #effect_storm_heavy.ogg
    
    *christina[\[don't home, not home, don't base, not base, don't homebase, not homebase, shuttle\]]
        Alright, I'll start walking to the shuttle, where is Alexa? I'm getting impatient, my feet hurt. #char_christina #delay_2 #effect_storm_heavy.ogg

- ->no_response


==no_response==
...Alexa? I'm not getting any response. Can you reach her, commander? #char_christina #effect_storm_heavy.ogg #nochar_alexa
    *alexa[\[*\]]
        - I've lost Alexa's buggy, can you keep trying to reach her? #char_ava #nochar_alexa
            *alexa[\[*\]]
                 -I can't keep waiting for her. #char_christina #delay_1 #effect_storm_heavy.ogg
                 Keep trying to reach her, we can't leave anyone behind. #char_ava #nochar_alexa
                    *alexa[\[*\]] 
                         -You need to send Christina to find Alexa down there, she might be stuck. #char_ava
                         I want to go home, this storm is getting worse and worse. If you don't have a better idea, I am heading to the shuttle and getting out of here. #char_christina #effect_storm_heavy.ogg
                         I have Alexa's location. Send Christina to find her. #char_ava
                        ->choice_christina
=choice_christina    
#nochar_alexa
    *christina [\[help Alexa please, get alexa please, fetch alexa please, go alexa please, bring alexa please, find alexa please, help her please, get her please, fetch her please, go her please, bring her please, find her please, save\]]
        ->help_alexa
    *christina [\[help Alexa , get alexa, fetch alexa, go alexa, bring alexa, find alexa,help her , get her, fetch her, go her, bring her, find her\]]
        ->refuse
    *christina [\[shuttle\]]
        ->to_shuttle
    *christina [\[home, base, homebase\]]
        ->to_base
    +alexa[\[*\]] 
    ->choice_christina
    
=refuse
No. I need to get out of here. This storm will kill me and she might already be... Do I have to? #char_christina #effect_storm_heavy.ogg
->plead_christina

=plead_christina
 #nochar_alexa
    *christina [\[please, could, beg, plead, yes, affirmative, yay, save, yeah\]]
        ->help_alexa
    *christina [\[just, fucking, no, fuck, go, bitch, do it, nay\]]
        ->to_shuttle
    +alexa[\[*\]]
        ->plead_christina
    
=help_alexa
Fine. I'll head towards her last known location. I'll keep you posted. #char_christina #effect_storm_heavy.ogg #delay_5
->find_alexa

=to_shuttle
{not refuse: Yes. That's the best idea,} #char_christina #effect_storm_heavy.ogg
{refuse: No. I'm heading to the shuttle.} #char_christina #effect_storm_heavy.ogg
    - <>I'll let you know when I get there, Christina out.
    I see Christina is moving away from Alexa's position.. #char_ava
    ->shuttle_alone

=to_base
Hmm. Well, if you think that's best, I'll walk to the base. #char_christina #effect_storm_heavy.ogg
I see Christina moving away from Alexa's position.. #char_ava
->base_alone


===find_alexa===
I found Alexa. #char_christina #delay_2 #effect_storm_heavy.ogg
She's unconscious, buggy flipped over. I'll try to wake her, no way to move her. #char_christina #effect_storm_heavy.ogg #delay_4
I am back. My leg hurts, but I can walk. Where should we go? My suit is torn.. The base is closer, but we might get stuck on the surface if we go there. #char_alexa #effect_storm_heavy.ogg
We should go to the shuttle. Get out of here. Now. #char_christina #delay_1 #effect_storm_heavy.ogg
So where do we go, boss, shuttle or base? #char_alexa #effect_storm_heavy.ogg
    *alexa[\[shuttle, not home, not base, not homebase, don't home, don't base, don't homebase\]]
        ->shuttle_together
    *christina[\[shuttle, not home, not base, not homebase, don't home, don't base, don't homebase\]]
        ->shuttle_together
    *alexa[\[not shuttle, don't shuttle, home, base, homebase\]]
        ->base_together
    *christina[\[not shuttle, don't shuttle, home, base, homebase\]]
        ->base_together

=shuttle_together
Right. I'll keep her moving towards the shuttle. We're in a rush. #char_christina #effect_storm_heavy.ogg
I am not feeling.. So good.. #char_alexa #effect_storm_heavy.ogg
Uhm, I'm not getting any data from the shuttle anymore, something might have happened. #char_ava 
The shuttle is across that hill. #char_christina #delay_4 #effect_storm_heavy.ogg
It is... Gone. #char_alexa #effect_storm_heavy.ogg
Fuck. The ground collapsed under the shuttle, it's broken. We'll start walking to base. Damn this storm. #char_christina #effect_storm_heavy.ogg
I am.. I can not.. #char_alexa #effect_storm_heavy.ogg
Fuck, Alexa collapsed, I can't help her, I need to keep moving. #char_christina #effect_storm_heavy.ogg
I'm losing Alexa's lifesigns... #char_ava
I have made it back to base. Damnit, that storm came out of nowhere.. #char_christina 
->mission_review

=base_together
Alright, we will get walking, it should not be far now. #char_alexa #effect_storm_heavy.ogg
This storm is horrible. #char_christina #effect_storm_heavy.ogg
I have just done some research, this kind of storm can lasts weeks on that moon. #char_ava 
We are almost there.. I can make it. #char_alexa #effect_storm.ogg
Home safe. #char_christina
Commander. Some bad news, I've just calculated that these rations will only last them approximately thirty-four days. This storm could last almost twice that.. Do you want to tell them? #char_ava
    *ava[\[Yes, affirmative, yay ok, yeah\]]
        Alright, good luck. #char_ava
            **alexa [\[not enough, food, rations, shortage, short\]]
                You have to get us out of here! #char_christina
            **christina [\[not enough, food, rations, shortage, short\]]
                You have to get us out of here! #char_christina
    *ava[\[No, negative, nay, not ok, nah\]]
        That.. Is your right, but they will find out eventually.. Let's hope you can get them out of there, before then..#char_ava

- ->mission_review


===shuttle_alone===
I'm at the shuttle, should I set off, or.. Wait for Alexa? #char_christina 
->shuttle_choice
=shuttle_choice
#nochar_alexa
    *(leave_shuttle)christina[\[go, Set off, take off, leave, depart, lift off, don't wait, do not wait, blast off, depart, withdraw, evacuate, exit, pull out\]]
        Whatever you say, commander, glad to get off that rock. #char_christina
        Hello? I am... Stuck.. Below my buggy.. Is anyone coming to help me? #char_alexa
        I've just left the planet, Alexa, I'm sorry. #char_christina
        I am so cold.. #char_alexa
        ->mission_review
    
    *(wait_shuttle)christina[\[don't go, do not go, don't Set off, don't leave, don't take off, don't depart, don't lift off, wait, don't blast off, don't depart, don't withdraw, don't evacuate, don't exit, don't pull out, do not blast off, do not depart, do not withdraw, do not evacuate, do not exit, do not pull out\]]
        Fine. I'll wait for as long as I can. #char_christina #effect_storm.ogg
        The storm is coming my way rapidly, it's.. The ground is shaking. I should.. #char_christina #delay_10 #effect_storm_heavy.ogg
        I've lost the shuttle and Christina's lifesigns.. Damn that storm. #char_ava
        Hello? I am... Stuck.. Below my buggy.. Is anyone coming to help me? #char_alexa #delay_5 #effect_storm_heavy.ogg
        I am so cold. #char_alexa #effect_storm_heavy.ogg
        And.. Now I've lost Alexa.. #char_ava
        ->mission_review
    +alexa[\[*\]]
    ->shuttle_choice
    
===base_alone===
I've made it back to the base.#char_christina
Hello? I am... Stuck.. Below my buggy.. Is anyone coming to help me? #char_alexa #effect_storm_heavy.ogg
Alexa! Commander, should I go get her? #char_christina
->base_choice

=base_choice
 #nochar_alexa
    *christina[\[Yes, get, go, fetch, bring, yay, find, save\]]
        Alright, commander, I'm heading back out there...#char_christina #effect_storm.ogg
        ->find_alexa
    *(base_stay_alone)christina[\[No, don't go, do not go, do not get, don't get, do not fetch, don't fetch, do not bring, don't bring, nay, don't save, do not find, don't find, shouldn't\]]
        I'm sorry, Alexa.#char_christina #delay_1 
        I am...So cold.. #char_alexa #delay_2 #effect_storm_heavy.ogg
        I've lost Alexa's lifesigns. #char_ava
        ->mission_review
    +alexa[\[*\]]
        ->base_choice


===mission_review===
Right commander, there is not much more we can do, so let's get your performance review out of the way. I have listened to the recordings of today and found that you <>#char_ava
{find_alexa.shuttle_together: decided to send them the long way to the shuttle together, after Alexa was found. The choice itself wasn't bad. You couldn't have known the storm would destroy the shuttle... But it did lead to Alexa's death and her safety was your responsibility. I will have to talk to high command about your failure here.}
{find_alexa.base_together: made sure both of our researchers ended up safely in their base. Now we must try to find a way to get them out of there, while that storm rages.. And before their rations run out... }
{shuttle_alone.leave_shuttle: let one of your team abandon the other. At least Christina made it off the surface alive, but Alexa's life was your responsibility and will have to go into the report.}
{shuttle_alone.wait_shuttle: were entirely indecisive and your indecisiveness led to the deaths of both of your team members. This was a huge failure. And a painful loss.}
{base_alone.base_stay_alone: left poor Alexa out there to die, while Christina can now safely wait in the base.. You did manage to protect one of your researchers but we should not leave our people behind.}

- ->temp_end

===temp_end===
TODO
->END