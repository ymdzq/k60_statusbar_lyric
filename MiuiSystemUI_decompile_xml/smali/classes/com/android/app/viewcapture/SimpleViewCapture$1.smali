.class public final Lcom/android/app/viewcapture/SimpleViewCapture$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final INSTANCE:Lcom/android/app/viewcapture/SimpleViewCapture$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/app/viewcapture/SimpleViewCapture$1;

    .line 2
    invoke-direct {v0}, Lcom/android/app/viewcapture/SimpleViewCapture$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/app/viewcapture/SimpleViewCapture$1;->INSTANCE:Lcom/android/app/viewcapture/SimpleViewCapture$1;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method
