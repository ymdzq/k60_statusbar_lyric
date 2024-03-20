.class public final Lcom/android/app/motiontool/UnknownTraceIdException;
.super Ljava/lang/Exception;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private final traceId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/app/motiontool/UnknownTraceIdException;->traceId:I

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final getTraceId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/app/motiontool/UnknownTraceIdException;->traceId:I

    .line 2
    return p0
    .line 4
.end method
