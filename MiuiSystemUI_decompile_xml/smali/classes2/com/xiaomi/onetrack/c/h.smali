.class public final Lcom/xiaomi/onetrack/c/h;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
