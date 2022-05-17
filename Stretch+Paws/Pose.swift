//
//  Pose.swift
//  Stretch+Paws
//
//  Created by Ivy  Chen  on 5/16/22.
//

import Foundation

struct Pose: Identifiable {
    let id = UUID()
    let name: String
    let asana: String
    let icon: String
    let description: String
    let steps: [String]
    let topTip: String
}

class Poses {
    var poseData = [
        Pose(
          name: "Downward-Facing Dog",
          asana: "Adho Mukha Shvanasana",
          icon: "Cat-1",
          description:
          "Did someone say dog? Can't we call this a downward-facing cat instead? It's OK – this is a friendly dog, it's not interested in chasing cats. In fact, Downward-Facing Dog is the lynchpin of a yoga asana practice: if you're going to befriend with any of these poses, make sure it's this canine classic.",
          steps: ["From a kneeling position, place your hands shoulder-distance apart and spread your fingers.", "Tuck your toes and lift your hips up towards the ceiling so you create an inverted V shape.", "Balance the weight between hands and feet and think about tilting your tailbone up towards the ceiling.","Send your gaze towards your feet and breath!"],
          topTip: "Bend your knees in order to create more length through the spine." ),
        Pose(
          name: "Standing Forward Fold",
          asana: "Uttanasana",
          icon: "Cat-2",
          description: "Think of this pose as giving yourself a cuddle. As you bend and look through your legs, you may even catch sight of your tail... or a mouse.",
          steps: ["From standing, roll your spine down until your upper body is draping over your lower body.","Bend your knees in your fold to release the lower back.","Let your hands dangle or clasp opposite elbows.","Stay in stillness, or for a bit of movement, sway side to side."],
          topTip: "Try interlacing your hands behind your back for another variation!" ),
        Pose(
          name: "Tree Pose",
          asana: "Vrksasana",
          icon: "Cat-3",
          description:
            "Trees aren't just for climbing and getting stuck in, they're for yoga too. This can be tricky to balance in but it's a very grounding pose when you get the hang of it!",
          steps: ["From a standing position, tip the weight into one foot and lift the other sole of the foot to the inside of the standing leg.","Your foot can be on the inner thigh, calf or ankle. Avoid the knee joint!", "Take your hands to meet at heart center.","Focus on something in front of you that's not moving!"],
          topTip: "If you feel steady, lift your arms up to the ceiling. If you're feeling very brave, close one or both eyes!" ),
        Pose(
          name: "Boat Pose",
          asana: "Navasana",
          icon: "Cat-4",
          description:"Boat Pose is the secret to building a solid core. Whether you're a cat who loves water (we see you, Bengals) or one who loathes it, you will feel super strong and supported when you nail this pose.",
          steps: ["From a seated position, lengthen your legs out in front of you and take your hands underneath your knees.","Draw your knees towards your chest and start to raise the feet off the ground.","Point your toes, look forward, and try to lift your toes in line with your eye line.","If you can, release and extend your arms towards your toes.","Keep looking forward, balancing on your sitting bones and squeezing your core!"],
          topTip: "Reach your arms up over your head for an extra challenge!" ),
        Pose(
          name: "Child's Pose",
          asana: "Balasana",
          icon: "Cat-5",
          description:"Much like curling up in a basket, at the foot of a bed, or on a human's lap, Child's Pose is the ultimate resting place. Drooling is welcome.",
          steps: ["Take your knees as wide at your yoga mat with toes touching.", "Sink your hips back towards your heels.", "Stretch your paws out in front of you and sink your heart down towards the floor.","Try to rest your forehead on the mat. If it doesn't reach, you can stack the fists on top of each other."],
          topTip: "Reach both arms over to one side for a great side stretch and repeat on the other side!" ),
        Pose(
          name: "Lotus Pose",
          asana: "Padmasana",
          icon: "Cat-6",
          description:" Meditating felines, unite! Lotus is the purrfect seated pose for finding stillness in your mind and body. Once you find this position, you may fall into a blissful state – the same kind of feeling as receiving a good scratch under the chin.",
          steps:["Come to a cross-legged seated position on your mat.","Place one foot at the top of the opposite thigh so that the sole of the foot is facing upwards. This is half lotus.","For full lotus, do the same on the other side, so both feet are on top of the opposite thighs, soles facing up.","Place your hands on your knees, palms facing up, and connect your index finger and thumb together on each hand. Close your eyes and enjoy!" ],
          topTip: "If the pose gets too intense, you can always meditate in a simple cross-legged position." ),
        Pose(
          name: "Dancer's Pose",
          asana: "Natarajasana",
          icon: "Cat-7",
          description:"Graceful by name and by nature, Dancer's Pose may earn you the name of 'Twinkle Toes' if performed properly. What more could you want in life be a dancing cat?",
          steps:["From standing, tip the weight into one foot and bend the other leg so the heel comes towards your butt.","Clasp your hand around your foot and press the foot into the hand to create a backbend.","Tip your chest forward and lengthen your other arm out in front of you. Ta da!"],
          topTip: "Keep the chest lifted and the heart open while trying to lift the leg higher!" ),
        Pose(
          name: "Standing Splits",
          asana: "Urdhva Prasarita Eka Padasana",
          icon: "Cat-8",
          description:"A nemesis pose for cats and humans alike, standing splits is a pretty challenging shape for many. Make sure your hamstrings are warm so that you can lift your top leg nice and high!",
          steps: ["From a forward fold, place your hands onto the ground in front of you.","Lift a leg up into the air and point the toe. Squeeze that leg so it's nice and strong and straight!", "Fold your chest towards your standing leg as much as possible.","If you feel balanced, try taking one or both hands around the standing leg for an extra balance challenge."],
          topTip: "Bend into the standing leg and use the bend to hop up into a handstand – if you dare!" ),
        Pose(
          name: "Forearm Stand",
          asana: "Pincha Mayurasana",
          icon: "Cat-9",
          description:"Fur-arm stand, also known as forearm stand to humans, is a member of the yoga pose family of inversions, which basically means getting upside down. Once you  master this pose, your owner will very likely take a video of you and upload it to Instagram immediately.",
          steps:["Start kneeling and place your forearms on the mat so your hands are flat. If you are at a wall, your fingers should be about a hand's distance away from it.","Tuck your toes and walk your feet in towards your arms.","Lift one leg up to the ceiling, point the toe, and bend the grounded leg.","Use the bend of the grounded leg to hop up, sending both legs into the air. Squeeze the legs together, and find your balance!"],
          topTip: "Try this against a wall to begin with!" ),
        Pose(
          name: "Plough Pose",
          asana: "Halasana",
          icon: "Cat-10",
          description: "Plough Pose can be a deeply relaxing stretch for the spine – and it looks kind of funky too. Your nervous system will thank you for this one! Ahhhh.",
          steps:["Lying on your back, use some momentum to rock back and forth along the spine until you can bring your  feet over your head.","Your feet might rest on the floor behind you or dangle in mid air.","You can support the back with your hands or release them onto the ground, interlacing the fingers."],
          topTip: "To come out of this pose, take the hands to the lower back and lower down slowly." ),
        
      ]
      
}
