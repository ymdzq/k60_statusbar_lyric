.class Lcom/android/settings/device/UpdateBroadcastManager$1;
.super Landroid/os/AsyncTask;
.source "UpdateBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/device/UpdateBroadcastManager;->updateSuperscript(Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$display:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Landroid/content/Context;ZI)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/android/settings/device/UpdateBroadcastManager$1;->val$appContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/settings/device/UpdateBroadcastManager$1;->val$display:Z

    iput p3, p0, Lcom/android/settings/device/UpdateBroadcastManager$1;->val$type:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2

    .line 35
    iget-object p1, p0, Lcom/android/settings/device/UpdateBroadcastManager$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/android/settings/device/UpdateBroadcastManager;->-$$Nest$smgetSuperscriptMap(Landroid/content/ContentResolver;)I

    move-result v0

    .line 37
    iget-boolean v1, p0, Lcom/android/settings/device/UpdateBroadcastManager$1;->val$display:Z

    iget p0, p0, Lcom/android/settings/device/UpdateBroadcastManager$1;->val$type:I

    if-eqz v1, :cond_0

    or-int/2addr p0, v0

    goto :goto_0

    :cond_0
    not-int p0, p0

    and-int/2addr p0, v0

    :goto_0
    const-string v0, "com.android.settings.superscript_map"

    .line 38
    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "com.android.settings.superscript_count"

    .line 39
    invoke-static {p0}, Lcom/android/settings/device/UpdateBroadcastManager;->-$$Nest$smgetSuperscriptCount(I)I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/device/UpdateBroadcastManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
