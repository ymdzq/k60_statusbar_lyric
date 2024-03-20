.class Lmiui/cloud/common/SwitchFileLogSender$2;
.super Landroid/os/FileObserver;
.source "SwitchFileLogSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/cloud/common/SwitchFileLogSender;->prepareLogFileLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/cloud/common/SwitchFileLogSender;


# direct methods
.method constructor <init>(Lmiui/cloud/common/SwitchFileLogSender;Ljava/lang/String;I)V
    .locals 0

    .line 322
    iput-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender$2;->this$0:Lmiui/cloud/common/SwitchFileLogSender;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 0

    .line 325
    iget-object p0, p0, Lmiui/cloud/common/SwitchFileLogSender$2;->this$0:Lmiui/cloud/common/SwitchFileLogSender;

    invoke-static {p0}, Lmiui/cloud/common/SwitchFileLogSender;->access$000(Lmiui/cloud/common/SwitchFileLogSender;)V

    return-void
.end method
