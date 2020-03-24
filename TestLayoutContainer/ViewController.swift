//
//  ViewController.swift
//  TestLayoutContainer
//
//  Created by Vladimir Inozemtsev on 20.03.2020.
//  Copyright © 2020 inozemtsev Vladimir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var layoutContainerView: LayoutContainerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let scrollView = UIScrollView()
        layoutContainerView.setContentView(view: scrollView)
        
        let label = UILabel()
        label.numberOfLines = 0
        label.text = """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus suscipit ut mi quis lobortis. Praesent metus dui, fringilla vel enim et, blandit bibendum nulla. Maecenas orci neque, gravida eu neque vel, congue placerat nisl. Sed venenatis leo eu laoreet aliquet. Nulla porttitor ultrices odio, ut lacinia dui placerat eu. Cras congue, ex eget sollicitudin fermentum, lorem nunc lobortis purus, id efficitur augue risus id libero. Nulla in faucibus felis.
        
        Vestibulum gravida arcu a erat posuere, at vehicula lorem lacinia. Suspendisse aliquam, tellus eu bibendum blandit, nunc turpis consectetur sapien, vel rhoncus turpis odio et arcu. Mauris et justo ultrices, pretium est ac, hendrerit neque. Etiam mollis, augue ac faucibus venenatis, quam urna finibus nunc, eu dignissim metus nisi id risus. In nec suscipit arcu. Pellentesque pharetra, justo ac varius aliquet, ligula metus vulputate arcu, ac congue diam magna et nisl. Suspendisse potenti. Nam id odio tempor, tincidunt justo quis, pretium ante. Ut non nunc euismod sem finibus malesuada vitae quis lectus. Donec porta ultricies tincidunt. Morbi dapibus leo vitae velit dictum, quis consequat eros interdum. Interdum et malesuada fames ac ante ipsum primis in faucibus.
        
        Vestibulum dictum, nulla at eleifend sagittis, elit arcu sagittis mauris, et venenatis ante erat eget lorem. Nam eget venenatis massa. Aenean feugiat enim at purus iaculis, quis aliquet leo pharetra. Nam pulvinar auctor elit. Nullam feugiat lobortis leo id varius. Sed vitae urna vel massa egestas convallis eu vestibulum nulla. Curabitur non condimentum odio.
        
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dignissim metus vitae massa imperdiet dignissim. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis tempor gravida hendrerit. Integer auctor viverra dui sagittis interdum. Ut ut risus convallis, condimentum massa nec, ornare lorem. Nullam id turpis sollicitudin, dapibus urna non, fermentum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis rutrum id erat et commodo. Maecenas mattis risus volutpat justo bibendum, at rutrum magna luctus. Morbi semper erat mi.
        
        Proin porta diam ipsum, sed laoreet lacus tincidunt in. Curabitur quis fringilla felis. Phasellus ac nisl pharetra massa posuere rutrum. Etiam egestas accumsan auctor. Fusce quis metus urna. Mauris at ornare nunc. Aliquam egestas ligula quis aliquet placerat. Quisque ac accumsan orci. Aenean eu aliquam purus, non dapibus neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu diam ex.
        
        Proin sed suscipit erat, id condimentum arcu. Morbi vestibulum vitae odio id pretium. Etiam ullamcorper rhoncus dolor, vel tempus dolor. Cras vulputate mauris odio, eu maximus magna viverra sed. Aliquam erat volutpat. Nunc laoreet ut sem et fringilla. Morbi dolor leo, cursus in ligula et, commodo luctus felis. Sed vel tellus ac sapien posuere faucibus id in lorem. Vestibulum sed quam blandit, mollis elit eget, ornare augue.
        
        Vestibulum libero justo, convallis id accumsan id, maximus ut augue. Fusce vulputate turpis sit amet vulputate malesuada. Maecenas eleifend nunc vulputate varius pulvinar. In arcu ligula, suscipit sed dictum non, fermentum at augue. Maecenas gravida sem diam. Duis gravida tortor porta tellus suscipit fermentum. Nullam porta ut leo a vulputate. In hac habitasse platea dictumst. Suspendisse tincidunt tortor id lectus eleifend, et faucibus ante blandit. Aenean tempor nisi sit amet lectus luctus, ac luctus purus imperdiet. Mauris convallis luctus ex et varius. Curabitur iaculis odio a massa eleifend imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam varius mollis tortor vel dictum. Integer nisi mauris, malesuada non dapibus ut, tincidunt in ex.
        
        Pellentesque mollis leo sit amet risus convallis aliquet. Ut hendrerit volutpat neque, in vehicula odio aliquet et. Suspendisse sollicitudin, enim ut tempor bibendum, dui risus bibendum dolor, sollicitudin aliquet odio metus quis risus. In hac habitasse platea dictumst. Sed ut massa auctor, mollis nibh dictum, eleifend justo. Nullam vel posuere odio. In porttitor eros id posuere pulvinar. Donec pellentesque libero et lectus lacinia accumsan.
        
        Fusce at sapien massa. Phasellus congue risus nisl, non gravida turpis tincidunt vel. Aliquam vel mi ipsum. Nunc id congue odio. Curabitur pharetra nulla malesuada nulla ultrices rhoncus id vitae dui. Curabitur mattis, mauris at dignissim tristique, mi eros maximus sem, et congue lorem est ac sapien. Aenean tristique ligula in rutrum suscipit. Nunc quis elit id sapien semper accumsan. Ut in lobortis velit. Sed suscipit est ut tristique venenatis.
        
        Cras id accumsan ligula. Curabitur non quam lacinia, mattis felis eu, lacinia nisi. Proin rhoncus vitae neque in scelerisque. Interdum et malesuada fames ac ante ipsum primis in faucibus. In venenatis ultricies metus, id pulvinar nunc faucibus a. Fusce eget diam semper, varius orci vel, venenatis justo. Phasellus id rhoncus dui, vitae eleifend mi. Etiam vel augue varius, dapibus urna at, convallis sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
        
        Nulla facilisi. Proin gravida consectetur nulla. Donec fringilla lacus dolor, vel tempor urna semper ac. Etiam massa metus, ullamcorper vitae lacus non, pharetra luctus dolor. Proin nec sem eu arcu hendrerit pharetra nec eget magna. Quisque hendrerit, justo quis eleifend varius, ex sem accumsan neque, quis rhoncus nulla risus sed quam. Mauris pharetra dolor orci, ac interdum ante aliquam eget. Sed at tellus nec neque laoreet posuere a at tortor. Sed molestie quis eros nec vulputate. Vivamus eu lacus quis nisl cursus sollicitudin. Duis in convallis nisi. Suspendisse dignissim eros quis sem cursus, in tempor arcu commodo. Morbi eget lorem in lacus tincidunt blandit in sed nisi. Vivamus ultrices facilisis accumsan. Nam aliquet eu enim ut iaculis.
        
        Curabitur convallis nibh orci, eu efficitur urna luctus nec. Praesent blandit, ex vitae imperdiet rutrum, elit neque tempor ligula, id sollicitudin tortor lectus vitae mauris. Nunc eget efficitur libero, sit amet commodo nunc. Nam posuere consequat euismod. In ultricies libero nec turpis porta, eget dignissim urna sagittis. Aliquam quis molestie leo. Donec at feugiat velit, bibendum lobortis nisi. Nulla eu ex ut est iaculis dapibus lobortis vel lacus. Donec cursus eros in magna maximus accumsan. Etiam id auctor velit. Integer mollis sagittis nisl nec vestibulum. Nunc consequat blandit diam et mollis. Curabitur pretium placerat tristique. Aliquam massa nisl, eleifend sit amet dolor vitae, efficitur bibendum magna. Donec vestibulum vulputate mi egestas condimentum. Mauris vestibulum fermentum libero consequat sagittis.
        
        Pellentesque sed ultricies diam. Pellentesque quis velit nec mauris viverra finibus. Duis nulla massa, semper eu odio laoreet, volutpat commodo ligula. Etiam ac lectus nisi. Aliquam purus odio, elementum nec orci et, hendrerit gravida tellus. In sed magna in sapien iaculis feugiat ac mollis felis. Aliquam quis finibus leo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras ac urna facilisis, rutrum est at, luctus mi. Morbi bibendum, libero eget tempus molestie, orci nunc faucibus lectus, a viverra felis sem imperdiet dolor. Integer vulputate lacus in lectus porta, sed vestibulum felis iaculis. Donec a felis a lacus varius euismod nec ut felis.
        
        Duis pretium tristique lacinia. In velit dolor, tincidunt id tempor et, facilisis in eros. Proin urna massa, cursus eu ullamcorper nec, fermentum at ligula. Nullam vel finibus erat, at eleifend ligula. Curabitur viverra urna ante, eget pharetra tellus imperdiet sed. Aenean id eleifend odio. Nulla vitae mi in urna ornare sodales. Donec id lorem massa. Proin sit amet sem mi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla elementum massa erat, accumsan efficitur risus viverra nec. Vivamus nec accumsan ex, id porttitor lorem. Suspendisse a enim ut ligula aliquet maximus. Etiam et ante quis tortor pulvinar pretium. Fusce massa nunc, scelerisque eu pulvinar sed, vehicula ut ante.
        
        Cras porta luctus egestas. Nam et massa quis orci sollicitudin sollicitudin sed nec nisi. Nulla orci est, aliquam sollicitudin libero non, pharetra finibus augue. Donec ornare leo id turpis molestie convallis. Pellentesque efficitur est quis rutrum lobortis. Curabitur eros tellus, posuere nec facilisis quis, viverra id dui. Nunc vel orci efficitur, dignissim odio vitae, mattis odio. Cras ac elit varius, tincidunt magna a, lacinia nunc. Cras pellentesque, massa eget varius sollicitudin, turpis metus malesuada urna, eu luctus lorem augue ac arcu. Vestibulum quam lacus, mollis at lacus efficitur, condimentum faucibus lectus. Praesent tincidunt iaculis arcu, sed iaculis ex vestibulum sed. Suspendisse ac sapien eget nisi vehicula sagittis vitae et velit. Nam ut venenatis lorem, in hendrerit purus.
        
        Donec a ultricies erat, vel condimentum ex. In sollicitudin pellentesque ligula vel fringilla. Aenean tortor nisi, cursus et pulvinar in, ultricies quis purus. Nunc nibh leo, mollis quis elit eget, mattis efficitur ligula. In lacus elit, condimentum sit amet sem ut, dignissim hendrerit quam. Integer sit amet mi rutrum velit euismod sagittis. Maecenas scelerisque leo non blandit rutrum. Quisque sit amet tempor ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas mollis felis quis tincidunt lobortis. In scelerisque quam efficitur tortor placerat gravida. Nunc eget congue sem. Nulla varius et lectus sit amet pulvinar. Vestibulum consectetur tincidunt dolor at posuere.
        
        Donec hendrerit quis dolor mollis lobortis. Nulla et interdum quam, in blandit nulla. Nulla eget magna a sapien porta feugiat. Aenean vel ipsum tellus. Suspendisse potenti. Donec facilisis elit eleifend lectus dignissim, porta elementum dui mattis. Curabitur sit amet elit velit.
        
        Integer porta mauris nec urna rutrum bibendum. Quisque at sapien nulla. Nunc ullamcorper nisl eu massa condimentum tincidunt. Mauris pharetra dui nec sapien feugiat, at imperdiet eros tempor. Nullam neque lectus, pretium sit amet enim et, lacinia lobortis lectus. Etiam interdum, massa eget congue dignissim, massa ex commodo ex, vestibulum fringilla ex lectus eget urna. Nulla ultricies dui purus, in maximus massa hendrerit cursus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean auctor leo lorem, eget ultricies tellus mattis nec.
        
        Sed fringilla ligula tincidunt consequat cursus. Duis mattis, diam eget finibus pulvinar, eros metus sagittis nunc, a consectetur mi metus fermentum mi. Fusce blandit massa augue. Aliquam sagittis sed nisl ut pretium. Maecenas rutrum, ex a efficitur mattis, massa odio viverra velit, rhoncus eleifend neque turpis eget dolor. Phasellus quis lectus pretium, tempor est quis, sollicitudin orci. Maecenas neque felis, hendrerit non molestie sit amet, faucibus in neque. Phasellus suscipit, metus non sollicitudin scelerisque, massa ligula scelerisque mi, sed ornare est quam non eros. Fusce eros dolor, dictum quis sodales a, finibus id nunc. Morbi maximus lobortis lorem, vitae porttitor nibh. Pellentesque congue sagittis elementum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris mattis varius enim, sit amet vehicula lorem. Nunc ac ex eu purus pulvinar fermentum sit amet id dolor. Nam ut rhoncus lorem.
        
        Mauris euismod tempor justo, venenatis efficitur nibh cursus id. Nulla lorem odio, luctus eu lorem eget, semper hendrerit enim. Proin nec finibus turpis, ut accumsan sem. Phasellus vel hendrerit sapien. Praesent enim risus, finibus et rhoncus in, gravida vitae est. Fusce et euismod nisl, in euismod risus. Praesent vel aliquet dolor. Nullam tempor turpis non sapien auctor vestibulum. Praesent ultrices varius ante sit amet scelerisque. Mauris nisl augue, condimentum non orci ut, scelerisque malesuada odio. Nam eu lobortis erat. Curabitur interdum est nunc, ut vestibulum ex fringilla vel.
        """
        
        scrollView.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            label.topAnchor.constraint(equalTo: scrollView.topAnchor),
            label.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            label.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
    }


}

