.class public final Lcom/android/systemui/motiontool/MotionToolStartable;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final ddmHandleMotionTool:Lcom/android/app/motiontool/DdmHandleMotionTool;


# direct methods
.method public constructor <init>(Lcom/android/app/motiontool/DdmHandleMotionTool;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/motiontool/MotionToolStartable;->ddmHandleMotionTool:Lcom/android/app/motiontool/DdmHandleMotionTool;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final start()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/motiontool/MotionToolStartable;->ddmHandleMotionTool:Lcom/android/app/motiontool/DdmHandleMotionTool;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget v0, Lcom/android/app/motiontool/DdmHandleMotionTool;->CHUNK_MOTO:I

    .line 7
    invoke-static {v0, p0}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 9
    return-void
    .line 12
.end method
