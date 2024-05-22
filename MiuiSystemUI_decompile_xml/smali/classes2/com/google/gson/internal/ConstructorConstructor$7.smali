.class public final Lcom/google/gson/internal/ConstructorConstructor$7;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$message:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/gson/internal/ConstructorConstructor$7;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$7;->val$message:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/gson/internal/ConstructorConstructor$7;->$r8$classId:I

    .line 2
    iget-object p0, p0, Lcom/google/gson/internal/ConstructorConstructor$7;->val$message:Ljava/lang/String;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    new-instance v0, Lcom/google/gson/JsonIOException;

    .line 10
    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    .line 12
    throw v0

    .line 15
    :goto_0
    new-instance v0, Lcom/google/gson/JsonIOException;

    .line 16
    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    .line 18
    throw v0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 22
.end method
