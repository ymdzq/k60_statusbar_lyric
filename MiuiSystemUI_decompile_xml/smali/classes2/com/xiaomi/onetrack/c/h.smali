.class public final Lcom/xiaomi/onetrack/c/h;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final a:Lorg/json/JSONArray;

.field public final c:Ljava/util/ArrayList;

.field public final d:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/h;->a:Lorg/json/JSONArray;

    .line 5
    iput-object p2, p0, Lcom/xiaomi/onetrack/c/h;->c:Ljava/util/ArrayList;

    .line 7
    iput-boolean p3, p0, Lcom/xiaomi/onetrack/c/h;->d:Z

    .line 9
    return-void
    .line 11
.end method
