.class public final Lcom/android/wm/shell/sosc/SoScUtilsImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final INSTANCE:Lcom/android/wm/shell/sosc/SoScUtilsImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/sosc/SoScUtilsImpl;

    .line 2
    invoke-direct {v0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;-><init>()V

    .line 4
    sput-object v0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$Provider$SINGLETON;->INSTANCE:Lcom/android/wm/shell/sosc/SoScUtilsImpl;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
