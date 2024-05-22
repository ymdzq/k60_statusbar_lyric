.class public final Lcom/google/protobuf/MessageSetSchema;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/google/protobuf/Schema;


# instance fields
.field public final defaultInstance:Lcom/google/protobuf/MessageLite;

.field public final extensionSchema:Lcom/google/protobuf/ExtensionSchemaLite;

.field public final unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSetLiteSchema;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/UnknownFieldSetLiteSchema;Lcom/google/protobuf/ExtensionSchemaLite;Lcom/google/protobuf/MessageLite;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iput-object p2, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchemaLite;

    .line 10
    iput-object p3, p0, Lcom/google/protobuf/MessageSetSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    .line 7
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite;

    .line 14
    iget-object p0, p2, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 16
    invoke-virtual {p1, p0}, Lcom/google/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x1

    .line 26
    return p0
    .line 27
.end method

.method public final getSerializedSize(Ljava/lang/Object;)I
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    .line 7
    iget-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 9
    iget p1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 11
    const/4 v0, -0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    goto :goto_1

    .line 17
    :cond_0
    move p1, v1

    .line 18
    move v0, p1

    .line 19
    :goto_0
    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    .line 20
    if-ge v0, v2, :cond_1

    .line 22
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    .line 24
    aget v2, v2, v0

    .line 26
    const/4 v3, 0x3

    .line 28
    ushr-int/2addr v2, v3

    .line 29
    iget-object v4, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 30
    aget-object v4, v4, v0

    .line 32
    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 34
    const/4 v5, 0x1

    .line 36
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 37
    move-result v5

    .line 40
    const/4 v6, 0x2

    .line 41
    mul-int/2addr v5, v6

    .line 42
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    .line 43
    move-result v6

    .line 46
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    .line 47
    move-result v2

    .line 50
    add-int/2addr v2, v6

    .line 51
    add-int/2addr v2, v5

    .line 52
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    .line 53
    move-result v3

    .line 56
    add-int/2addr v3, v2

    .line 57
    add-int/2addr p1, v3

    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    goto :goto_0

    .line 61
    :cond_1
    iput p1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 62
    :goto_1
    add-int/2addr p1, v1

    .line 64
    return p1
    .line 65
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    .line 7
    iget-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSetLite;->hashCode()I

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchemaLite;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {p1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 7
    const/4 p0, 0x0

    .line 10
    throw p0
    .line 11
.end method

.method public final makeImmutable(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 8
    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 10
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Lcom/google/protobuf/UnknownFieldSetLite;->isMutable:Z

    .line 13
    iget-object p0, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchemaLite;

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {p1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 20
    const/4 p0, 0x0

    .line 23
    throw p0
    .line 24
.end method

.method public final mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/SchemaUtil;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSetLiteSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final mergeFrom(Ljava/lang/Object;[BIILcom/google/protobuf/ArrayDecoders$Registers;)V
    .locals 0

    .line 2
    move-object p0, p1

    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object p2, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 3
    sget-object p3, Lcom/google/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/google/protobuf/UnknownFieldSetLite;

    if-ne p2, p3, :cond_0

    .line 4
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object p2

    .line 5
    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 6
    :cond_0
    invoke-static {p1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 7
    throw p0
.end method

.method public final newInstance()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/MessageSetSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 2
    instance-of v0, p0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod$1()Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 14
    return-object p0

    .line 16
    :cond_0
    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 17
    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 24
    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 25
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    move-result-object p0

    .line 30
    return-object p0
    .line 31
.end method

.method public final writeTo(Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStreamWriter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/MessageSetSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchemaLite;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {p1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 7
    const/4 p0, 0x0

    .line 10
    throw p0
    .line 11
.end method
