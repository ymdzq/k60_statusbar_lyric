.class public abstract Lcom/android/keyguard/KeyguardListenModelKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 9
    sput-object v0, Lcom/android/keyguard/KeyguardListenModelKt;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 12
    return-void
    .line 14
.end method
