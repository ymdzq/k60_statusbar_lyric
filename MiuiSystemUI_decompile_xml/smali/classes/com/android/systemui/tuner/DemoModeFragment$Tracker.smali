.class Lcom/android/systemui/tuner/DemoModeFragment$Tracker;
.super Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/tuner/DemoModeFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tuner/DemoModeFragment;Landroid/content/Context;Lcom/android/systemui/util/settings/GlobalSettings;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/tuner/DemoModeFragment$Tracker;->this$0:Lcom/android/systemui/tuner/DemoModeFragment;

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;-><init>(Landroid/content/Context;Lcom/android/systemui/util/settings/GlobalSettings;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDemoModeAvailabilityChanged()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/tuner/DemoModeFragment;->STATUS_ICONS:[Ljava/lang/String;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tuner/DemoModeFragment$Tracker;->this$0:Lcom/android/systemui/tuner/DemoModeFragment;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroidx/preference/SwitchPreference;

    .line 6
    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    .line 8
    iget-boolean v1, v1, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isDemoModeAvailable:Z

    .line 10
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    .line 15
    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    .line 17
    iget-boolean v1, v1, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isDemoModeAvailable:Z

    .line 19
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 21
    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    .line 24
    iget-object p0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    .line 26
    iget-boolean p0, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isInDemoMode:Z

    .line 28
    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 30
    return-void
    .line 33
.end method

.method public final onDemoModeFinished()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/tuner/DemoModeFragment;->STATUS_ICONS:[Ljava/lang/String;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tuner/DemoModeFragment$Tracker;->this$0:Lcom/android/systemui/tuner/DemoModeFragment;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    .line 8
    iget-boolean p0, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isInDemoMode:Z

    .line 10
    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 12
    return-void
    .line 15
.end method

.method public final onDemoModeStarted()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/tuner/DemoModeFragment;->STATUS_ICONS:[Ljava/lang/String;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tuner/DemoModeFragment$Tracker;->this$0:Lcom/android/systemui/tuner/DemoModeFragment;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    .line 8
    iget-boolean p0, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isInDemoMode:Z

    .line 10
    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 12
    return-void
    .line 15
.end method
