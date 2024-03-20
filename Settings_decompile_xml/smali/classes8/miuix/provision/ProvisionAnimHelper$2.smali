.class Lmiuix/provision/ProvisionAnimHelper$2;
.super Ljava/lang/Object;
.source "ProvisionAnimHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/provision/ProvisionAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/provision/ProvisionAnimHelper;


# direct methods
.method constructor <init>(Lmiuix/provision/ProvisionAnimHelper;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lmiuix/provision/ProvisionAnimHelper$2;->this$0:Lmiuix/provision/ProvisionAnimHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 149
    iget-object p1, p0, Lmiuix/provision/ProvisionAnimHelper$2;->this$0:Lmiuix/provision/ProvisionAnimHelper;

    invoke-static {p2}, Lcom/android/provision/IProvisionAnim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/provision/IProvisionAnim;

    move-result-object p2

    invoke-static {p1, p2}, Lmiuix/provision/ProvisionAnimHelper;->access$302(Lmiuix/provision/ProvisionAnimHelper;Lcom/android/provision/IProvisionAnim;)Lcom/android/provision/IProvisionAnim;

    .line 152
    :try_start_0
    iget-object p1, p0, Lmiuix/provision/ProvisionAnimHelper$2;->this$0:Lmiuix/provision/ProvisionAnimHelper;

    invoke-static {p1}, Lmiuix/provision/ProvisionAnimHelper;->access$300(Lmiuix/provision/ProvisionAnimHelper;)Lcom/android/provision/IProvisionAnim;

    move-result-object p1

    iget-object p2, p0, Lmiuix/provision/ProvisionAnimHelper$2;->this$0:Lmiuix/provision/ProvisionAnimHelper;

    invoke-static {p2}, Lmiuix/provision/ProvisionAnimHelper;->access$400(Lmiuix/provision/ProvisionAnimHelper;)Lcom/android/provision/IAnimCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/provision/IProvisionAnim;->registerRemoteCallback(Lcom/android/provision/IAnimCallback;)V

    .line 153
    iget-object p0, p0, Lmiuix/provision/ProvisionAnimHelper$2;->this$0:Lmiuix/provision/ProvisionAnimHelper;

    invoke-static {p0}, Lmiuix/provision/ProvisionAnimHelper;->access$200(Lmiuix/provision/ProvisionAnimHelper;)Lmiuix/provision/ProvisionAnimHelper$AnimListener;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/provision/ProvisionAnimHelper$AnimListener;->onAminServiceConnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 155
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    return-void
.end method
