.class public Lcom/android/settings/development/MiuiDirectEnterSystemController$LockScreenAsyncTask;
.super Landroid/os/AsyncTask;
.source "MiuiDirectEnterSystemController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/MiuiDirectEnterSystemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LockScreenAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/MiuiDirectEnterSystemController;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/MiuiDirectEnterSystemController;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/settings/development/MiuiDirectEnterSystemController$LockScreenAsyncTask;->this$0:Lcom/android/settings/development/MiuiDirectEnterSystemController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/MiuiDirectEnterSystemController$LockScreenAsyncTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 1

    .line 77
    iget-object p0, p0, Lcom/android/settings/development/MiuiDirectEnterSystemController$LockScreenAsyncTask;->this$0:Lcom/android/settings/development/MiuiDirectEnterSystemController;

    invoke-static {p0}, Lcom/android/settings/development/MiuiDirectEnterSystemController;->-$$Nest$fgetmLockPatternUtils(Lcom/android/settings/development/MiuiDirectEnterSystemController;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    const/4 p0, 0x0

    return-object p0
.end method
