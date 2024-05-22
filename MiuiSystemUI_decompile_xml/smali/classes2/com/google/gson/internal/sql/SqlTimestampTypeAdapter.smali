.class public final Lcom/google/gson/internal/sql/SqlTimestampTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final FACTORY:Lcom/google/gson/internal/sql/SqlTimestampTypeAdapter$1;


# instance fields
.field public final dateTypeAdapter:Lcom/google/gson/TypeAdapter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/internal/sql/SqlTimestampTypeAdapter$1;

    .line 2
    invoke-direct {v0}, Lcom/google/gson/internal/sql/SqlTimestampTypeAdapter$1;-><init>()V

    .line 4
    sput-object v0, Lcom/google/gson/internal/sql/SqlTimestampTypeAdapter;->FACTORY:Lcom/google/gson/internal/sql/SqlTimestampTypeAdapter$1;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Lcom/google/gson/TypeAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/gson/internal/sql/SqlTimestampTypeAdapter;->dateTypeAdapter:Lcom/google/gson/TypeAdapter;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/gson/internal/sql/SqlTimestampTypeAdapter;->dateTypeAdapter:Lcom/google/gson/TypeAdapter;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/Date;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    new-instance p1, Ljava/sql/Timestamp;

    .line 12
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 14
    move-result-wide v0

    .line 17
    invoke-direct {p1, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return-object p1
    .line 23
.end method

.method public final write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/sql/Timestamp;

    .line 2
    iget-object p0, p0, Lcom/google/gson/internal/sql/SqlTimestampTypeAdapter;->dateTypeAdapter:Lcom/google/gson/TypeAdapter;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 6
    return-void
    .line 9
.end method
