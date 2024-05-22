.class public abstract Lcom/android/systemui/statusbar/notification/unimportant/FoldCloudDataHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final bgHandler:Landroid/os/Handler;

.field public static logger:Lcom/android/systemui/log/UnimportantNotifLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 4
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 9
    check-cast v1, Landroid/os/Looper;

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    sput-object v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldCloudDataHelper;->bgHandler:Landroid/os/Handler;

    .line 15
    return-void
    .line 17
.end method

.method public static jsonArrayStr2StrList(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    goto :goto_0

    .line 7
    :catch_0
    new-instance v0, Lorg/json/JSONArray;

    .line 8
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 10
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 15
    move-result v1

    .line 18
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 23
    move-result v2

    .line 26
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 27
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 31
    move-result-object v1

    .line 34
    :goto_1
    iget-boolean v2, v1, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 35
    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 39
    move-result v2

    .line 42
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 46
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    goto :goto_1

    .line 50
    :cond_0
    return-object p0
    .line 51
.end method
