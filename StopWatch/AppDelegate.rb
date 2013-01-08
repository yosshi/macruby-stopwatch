#
#  AppDelegate.rb
#  StopWatch
#
#  Created by Yoshiyuki MIYAGI on 2013/01/09.
#  Copyright 2013年 Yoshiyuki MIYAGI. All rights reserved.
#

class AppDelegate
    attr_accessor :window
    attr_accessor :textField

    def applicationDidFinishLaunching(a_notification)
        # Insert code here to initialize your application
    end

    def startTimer(sender)
        # This method is called when the start button is clicked.
        if @timer.nil?
            @time = 0.0
            @timer = NSTimer
            .scheduledTimerWithTimeInterval(0.1,
                                            target: self,
                                            selector: "timerHandler:",
                                            userInfo: nil,
                                            repeats: true)
        end
    end
    
    def stopTimer(sender)
        # This method is called when the stop button is clicked.
        if @timer
            @timer.invalidate
            @timer = nil
        end
    end

    def timerHandler(userInfo)
        @time += 0.1
        string = sprintf("%.1f", @time)
        textField.setStringValue(string)
    end
    
end

