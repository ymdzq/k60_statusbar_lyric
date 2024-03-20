.class public final Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public alpha:F

.field public signalView:Z

.field public visibleState:I

.field public xTranslation:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;->visibleState:I

    .line 6
    return-void
    .line 8
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string p2, "ViewState { "

    .line 2
    invoke-static {p2}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    move-result-object p2

    .line 7
    const/4 v0, 0x1

    .line 8
    const-class v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;

    .line 9
    move v2, v0

    .line 11
    :goto_0
    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 14
    move-result-object v3

    .line 17
    array-length v4, v3

    .line 18
    const/4 v5, 0x0

    .line 19
    move v6, v5

    .line 20
    :goto_1
    if-ge v6, v4, :cond_3

    .line 21
    aget-object v7, v3, v6

    .line 23
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 25
    move-result v8

    .line 28
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 29
    move-result v9

    .line 32
    if-nez v9, :cond_2

    .line 33
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->isSynthetic()Z

    .line 35
    move-result v9

    .line 38
    if-nez v9, :cond_2

    .line 39
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    .line 41
    move-result v8

    .line 44
    if-eqz v8, :cond_0

    .line 45
    goto :goto_2

    .line 47
    :cond_0
    if-nez v2, :cond_1

    .line 48
    const-string v2, ", "

    .line 50
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_1
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 58
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v2, ": "

    .line 62
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 67
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v2

    .line 73
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :catch_0
    move v2, v5

    .line 77
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 78
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 81
    move-result-object v1

    .line 84
    goto :goto_0

    .line 85
    :cond_4
    const-string p0, " }"

    .line 86
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 91
    return-void
    .line 94
.end method
