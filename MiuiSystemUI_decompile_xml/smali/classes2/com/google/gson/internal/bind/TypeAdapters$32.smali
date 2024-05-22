.class public final Lcom/google/gson/internal/bind/TypeAdapters$32;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$boxed:Ljava/lang/Class;

.field public final synthetic val$typeAdapter:Lcom/google/gson/TypeAdapter;

.field public final synthetic val$unboxed:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/google/gson/internal/bind/TypeAdapters$32;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$32;->val$unboxed:Ljava/lang/Class;

    .line 4
    iput-object p2, p0, Lcom/google/gson/internal/bind/TypeAdapters$32;->val$boxed:Ljava/lang/Class;

    .line 6
    iput-object p3, p0, Lcom/google/gson/internal/bind/TypeAdapters$32;->val$typeAdapter:Lcom/google/gson/TypeAdapter;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 3

    .line 1
    iget p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$32;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/google/gson/internal/bind/TypeAdapters$32;->val$boxed:Ljava/lang/Class;

    .line 5
    iget-object v2, p0, Lcom/google/gson/internal/bind/TypeAdapters$32;->val$typeAdapter:Lcom/google/gson/TypeAdapter;

    .line 7
    iget-object p0, p0, Lcom/google/gson/internal/bind/TypeAdapters$32;->val$unboxed:Ljava/lang/Class;

    .line 9
    packed-switch p1, :pswitch_data_0

    .line 11
    goto :goto_0

    .line 14
    :pswitch_0
    iget-object p1, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 15
    if-eq p1, p0, :cond_0

    .line 17
    if-ne p1, v1, :cond_1

    .line 19
    :cond_0
    move-object v0, v2

    .line 21
    :cond_1
    return-object v0

    .line 22
    :goto_0
    iget-object p1, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 23
    if-eq p1, p0, :cond_2

    .line 25
    if-ne p1, v1, :cond_3

    .line 27
    :cond_2
    move-object v0, v2

    .line 29
    :cond_3
    return-object v0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 32
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$32;->$r8$classId:I

    .line 2
    const-string v1, "]"

    .line 4
    iget-object v2, p0, Lcom/google/gson/internal/bind/TypeAdapters$32;->val$typeAdapter:Lcom/google/gson/TypeAdapter;

    .line 6
    const-string v3, ",adapter="

    .line 8
    iget-object v4, p0, Lcom/google/gson/internal/bind/TypeAdapters$32;->val$unboxed:Ljava/lang/Class;

    .line 10
    const-string v5, "+"

    .line 12
    iget-object p0, p0, Lcom/google/gson/internal/bind/TypeAdapters$32;->val$boxed:Ljava/lang/Class;

    .line 14
    const-string v6, "Factory[type="

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 18
    goto :goto_0

    .line 21
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 63
    move-result-object v4

    .line 66
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 94
.end method
