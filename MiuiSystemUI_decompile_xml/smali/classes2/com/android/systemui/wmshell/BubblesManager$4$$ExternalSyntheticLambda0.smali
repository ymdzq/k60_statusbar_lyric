.class public final synthetic Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wmshell/BubblesManager$4;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/BubblesManager$4;Lcom/android/systemui/model/SysUiState;ZI)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wmshell/BubblesManager$4;

    iput-object p2, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;->f$2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/BubblesManager$4;Z)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wmshell/BubblesManager$4;

    iput-boolean p2, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;->f$2:Z

    const-string p1, "Bubbles"

    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/high16 v1, 0x800000

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 10
    iget-object v2, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 12
    check-cast v2, Lcom/android/systemui/model/SysUiState;

    .line 14
    iget-boolean p0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;->f$2:Z

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-virtual {v2, v1, p0}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 21
    iget-object p0, v0, Lcom/android/systemui/wmshell/BubblesManager$4;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    .line 24
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    .line 28
    move-result p0

    .line 31
    invoke-virtual {v2, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 32
    return-void

    .line 35
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 36
    iget-object v2, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 38
    check-cast v2, Lcom/android/systemui/model/SysUiState;

    .line 40
    iget-boolean p0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;->f$2:Z

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    const/16 v3, 0x4000

    .line 47
    invoke-virtual {v2, v3, p0}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 49
    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager$4;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    .line 52
    iget-object v3, v0, Lcom/android/systemui/wmshell/BubblesManager;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    .line 56
    move-result v3

    .line 59
    invoke-virtual {v2, v3}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 60
    if-nez p0, :cond_0

    .line 63
    const/4 p0, 0x0

    .line 65
    invoke-virtual {v2, v1, p0}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 66
    iget-object p0, v0, Lcom/android/systemui/wmshell/BubblesManager;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    .line 71
    move-result p0

    .line 74
    invoke-virtual {v2, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 75
    :cond_0
    return-void

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 79
    iget-boolean v1, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;->f$2:Z

    .line 81
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 83
    check-cast p0, Ljava/lang/String;

    .line 85
    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager$4;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    .line 87
    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 89
    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 91
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setRequestTopUi(Ljava/lang/String;Z)V

    .line 93
    return-void

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 98
.end method
