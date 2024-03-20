.class public final Lcom/android/systemui/contrast/ContrastDialog$onCreate$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/contrast/ContrastDialog;


# direct methods
.method public synthetic constructor <init>(ILcom/android/systemui/contrast/ContrastDialog;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/contrast/ContrastDialog$onCreate$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/contrast/ContrastDialog$onCreate$1;->this$0:Lcom/android/systemui/contrast/ContrastDialog;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/contrast/ContrastDialog$onCreate$1;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/contrast/ContrastDialog$onCreate$1;->this$0:Lcom/android/systemui/contrast/ContrastDialog;

    .line 8
    iget-object p2, p1, Lcom/android/systemui/contrast/ContrastDialog;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 10
    iget v0, p1, Lcom/android/systemui/contrast/ContrastDialog;->initialContrast:F

    .line 12
    iget-object p1, p1, Lcom/android/systemui/contrast/ContrastDialog;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 14
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 16
    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 18
    move-result p1

    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 28
    check-cast p2, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 29
    const-string v1, "contrast_level"

    .line 31
    invoke-virtual {p2, v1, v0, p1}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 33
    iget-object p0, p0, Lcom/android/systemui/contrast/ContrastDialog$onCreate$1;->this$0:Lcom/android/systemui/contrast/ContrastDialog;

    .line 36
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 38
    return-void

    .line 41
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/contrast/ContrastDialog$onCreate$1;->this$0:Lcom/android/systemui/contrast/ContrastDialog;

    .line 42
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 44
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 48
.end method
