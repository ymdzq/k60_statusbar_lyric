.class Lcom/android/settings/bluetooth/RequestPermissionActivity$1;
.super Ljava/lang/Object;
.source "RequestPermissionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/RequestPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object p0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->-$$Nest$mcancelAndFinish(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    :cond_0
    return-void
.end method
