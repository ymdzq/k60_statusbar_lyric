.class public Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;
.super Landroid/app/Service;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mDumpHandler:Lcom/android/systemui/dump/DumpHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;->mDumpHandler:Lcom/android/systemui/dump/DumpHandler;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dump/SystemUIAuxiliaryDumpService;->mDumpHandler:Lcom/android/systemui/dump/DumpHandler;

    .line 2
    const-string p3, "--dump-priority"

    .line 4
    const-string v0, "NORMAL"

    .line 6
    filled-new-array {p3, v0}, [Ljava/lang/String;

    .line 8
    move-result-object p3

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/dump/DumpHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 12
    return-void
    .line 15
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method
