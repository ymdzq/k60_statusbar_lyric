.class public final Lcom/android/systemui/privacy/PrivacyDialogController$startActivity$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/privacy/PrivacyDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyDialogController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController$startActivity$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onActivityStarted(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    .line 2
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogController$startActivity$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 6
    if-eqz p1, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->dialog:Landroid/app/Dialog;

    .line 10
    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->dialog:Landroid/app/Dialog;

    .line 18
    if-eqz p0, :cond_1

    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 22
    :cond_1
    :goto_0
    return-void
    .line 25
.end method
