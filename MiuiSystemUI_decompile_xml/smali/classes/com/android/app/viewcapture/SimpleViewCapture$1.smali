.class public final Lcom/android/app/viewcapture/SimpleViewCapture$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
