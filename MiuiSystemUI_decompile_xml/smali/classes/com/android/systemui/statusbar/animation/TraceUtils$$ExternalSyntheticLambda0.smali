.class public final synthetic Lcom/android/systemui/statusbar/animation/TraceUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
