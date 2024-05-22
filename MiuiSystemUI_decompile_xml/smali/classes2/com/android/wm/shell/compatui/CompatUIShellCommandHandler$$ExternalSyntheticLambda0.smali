.class public final synthetic Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/compatui/CompatUIConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUIConfiguration;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result p1

    .line 15
    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsRestartDialogOverrideEnabled:Z

    .line 16
    return-void

    .line 18
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 19
    check-cast p1, Ljava/lang/Boolean;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 30
.end method
