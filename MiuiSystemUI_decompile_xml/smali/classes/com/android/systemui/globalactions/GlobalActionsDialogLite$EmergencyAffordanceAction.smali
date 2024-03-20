.class public final Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyAffordanceAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyAction;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyAffordanceAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 2
    const v0, 0x10802d1    # @android:drawable/emo_im_foot_in_mouth

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final onPress()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyAffordanceAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    .line 4
    invoke-virtual {p0}, Lcom/android/internal/util/EmergencyAffordanceManager;->performEmergencyCall()V

    .line 6
    return-void
    .line 9
.end method
