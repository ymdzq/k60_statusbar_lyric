.class public final Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;I)V
    .locals 2

    .line 1
    iput p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p2, v0, :cond_0

    .line 5
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 7
    const p1, 0x104048b    # @android:string/keyguard_accessibility_slide_unlock

    .line 9
    const p2, 0x104048a    # @android:string/keyguard_accessibility_slide_area

    .line 12
    const v0, 0x10803f2    # @android:drawable/ic_lock_outline_wht_24dp

    .line 15
    const v1, 0x10803f4    # @android:drawable/ic_lock_ringer_off_alpha

    .line 18
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;-><init>(IIII)V

    .line 21
    return-void

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 25
    const p1, 0x1040486    # @android:string/keyguard_accessibility_pattern_unlock

    .line 27
    const p2, 0x1040485    # @android:string/keyguard_accessibility_pattern_area

    .line 30
    const v0, 0x108034a    # @android:drawable/ic_bt_hearing_aid

    .line 33
    const v1, 0x1080349    # @android:drawable/ic_bt_headset_hfp

    .line 36
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;-><init>(IIII)V

    .line 39
    return-void
    .line 42
.end method


# virtual methods
.method public final showBeforeProvisioning()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final showDuringKeyguard()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
