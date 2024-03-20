.class public Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadReporterManager;
.super Ljava/lang/Object;
.source "SplitLoadReporterManager.java"


# static fields
.field private static final sLoadReporterRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadReporterManager;->sLoadReporterRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getLoadReporter()Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;
    .locals 1

    .line 48
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadReporterManager;->sLoadReporterRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;

    return-object v0
.end method

.method public static install(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;)V
    .locals 2

    .line 43
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadReporterManager;->sLoadReporterRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
