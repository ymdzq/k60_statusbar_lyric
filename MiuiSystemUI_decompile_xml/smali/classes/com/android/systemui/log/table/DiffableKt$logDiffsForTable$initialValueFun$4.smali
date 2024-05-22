.class final Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$4;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $columnName:Ljava/lang/String;

.field final synthetic $columnPrefix:Ljava/lang/String;

.field final synthetic $initialValue:Ljava/lang/String;

.field final synthetic $tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$4;->$tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    .line 2
    const-string p1, ""

    .line 4
    iput-object p1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$4;->$columnPrefix:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$4;->$columnName:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$4;->$initialValue:Ljava/lang/String;

    .line 10
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 13
    return-void
    .line 16
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$4;->$tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$4;->$columnPrefix:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$4;->$columnName:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$4;->$initialValue:Ljava/lang/String;

    .line 8
    const/4 v4, 0x1

    .line 10
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/log/table/TableLogBuffer;->logChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    iget-object p0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$initialValueFun$4;->$initialValue:Ljava/lang/String;

    .line 14
    return-object p0
    .line 16
.end method
