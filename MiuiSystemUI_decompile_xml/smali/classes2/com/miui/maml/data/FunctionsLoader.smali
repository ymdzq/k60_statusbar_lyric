.class public Lcom/miui/maml/data/FunctionsLoader;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/miui/maml/data/BaseFunctions;->load()V

    .line 2
    invoke-static {}, Lcom/miui/maml/data/StringFunctions;->load()V

    .line 5
    invoke-static {}, Lcom/miui/maml/data/FormatFunctions;->load()V

    .line 8
    invoke-static {}, Lcom/miui/maml/data/DateFunctions;->load()V

    .line 11
    invoke-static {}, Lcom/miui/maml/data/JsonFunctions;->load()V

    .line 14
    return-void
    .line 17
.end method
