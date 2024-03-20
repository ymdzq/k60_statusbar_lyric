.class public final synthetic Lcom/android/systemui/statusbar/animation/TraceUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string/jumbo v0, "status bar openAppAnim"

    .line 5
    iput-object v0, p0, Lcom/android/systemui/statusbar/animation/TraceUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/animation/TraceUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 2
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method
