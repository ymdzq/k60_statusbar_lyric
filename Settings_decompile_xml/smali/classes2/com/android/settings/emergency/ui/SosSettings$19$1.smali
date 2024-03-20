.class Lcom/android/settings/emergency/ui/SosSettings$19$1;
.super Ljava/lang/Object;
.source "SosSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/ui/SosSettings$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/emergency/ui/SosSettings$19;

.field final synthetic val$updateInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/ui/SosSettings$19;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 653
    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings$19$1;->this$1:Lcom/android/settings/emergency/ui/SosSettings$19;

    iput-object p2, p0, Lcom/android/settings/emergency/ui/SosSettings$19$1;->val$updateInfo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "run: updateInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings$19$1;->val$updateInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SosSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings$19$1;->this$1:Lcom/android/settings/emergency/ui/SosSettings$19;

    iget-object v0, v0, Lcom/android/settings/emergency/ui/SosSettings$19;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings$19$1;->val$updateInfo:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$mshowPrivacyUpdateDialog(Lcom/android/settings/emergency/ui/SosSettings;Ljava/lang/String;)V

    return-void
.end method
