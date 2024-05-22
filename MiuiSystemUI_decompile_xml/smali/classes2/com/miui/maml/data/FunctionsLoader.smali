.class public Lcom/miui/maml/data/FunctionsLoader;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
