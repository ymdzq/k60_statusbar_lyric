.class public final Lcom/android/settings/backup/SyncRootProtos$SyncRoot;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SyncRootProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/backup/SyncRootProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncRoot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/backup/SyncRootProtos$SyncRoot;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SETTING_FIELD_NUMBER:I = 0x7

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private setting_:Lcom/android/settings/backup/SettingProtos$Settings;


# direct methods
.method static bridge synthetic -$$Nest$fgetbitField0_(Lcom/android/settings/backup/SyncRootProtos$SyncRoot;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->bitField0_:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputbitField0_(Lcom/android/settings/backup/SyncRootProtos$SyncRoot;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->bitField0_:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsetting_(Lcom/android/settings/backup/SyncRootProtos$SyncRoot;Lcom/android/settings/backup/SettingProtos$Settings;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->setting_:Lcom/android/settings/backup/SettingProtos$Settings;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 550
    new-instance v0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    invoke-direct {v0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;-><init>()V

    sput-object v0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    .line 558
    new-instance v0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$1;

    invoke-direct {v0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$1;-><init>()V

    sput-object v0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 98
    iput-byte v0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 98
    iput-byte p1, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/android/settings/backup/SyncRootProtos$SyncRoot-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;
    .locals 1

    .line 554
    sget-object v0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 60
    invoke-static {}, Lcom/android/settings/backup/SyncRootProtos;->-$$Nest$sfgetinternal_static_syncroot_SyncRoot_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 1

    .line 243
    sget-object v0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    invoke-virtual {v0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->toBuilder()Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    sget-object v0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->PARSER:Lcom/google/protobuf/Parser;

    .line 203
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 138
    :cond_0
    instance-of v1, p1, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    if-nez v1, :cond_1

    .line 139
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 141
    :cond_1
    check-cast p1, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->hasSetting()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->hasSetting()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 144
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->hasSetting()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->getSetting()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object v1

    .line 146
    invoke-virtual {p1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->getSetting()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/backup/SettingProtos$Settings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 148
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v3

    :cond_4
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;
    .locals 0

    .line 590
    sget-object p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->getDefaultInstanceForType()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->getDefaultInstanceForType()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object p0

    return-object p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/backup/SyncRootProtos$SyncRoot;",
            ">;"
        }
    .end annotation

    .line 585
    sget-object p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 120
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 124
    :cond_0
    iget v0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->getSetting()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 129
    iput v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->memoizedSize:I

    return v1
.end method

.method public getSetting()Lcom/android/settings/backup/SettingProtos$Settings;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->setting_:Lcom/android/settings/backup/SettingProtos$Settings;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/settings/backup/SettingProtos$Settings;->getDefaultInstance()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public hasSetting()Z
    .locals 1

    .line 80
    iget p0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 154
    iget v0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 155
    iget p0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->memoizedHashCode:I

    return p0

    .line 158
    :cond_0
    invoke-static {}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->hasSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->getSetting()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/backup/SettingProtos$Settings;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    mul-int/lit8 v1, v1, 0x1d

    .line 163
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 164
    iput v1, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    .line 66
    invoke-static {}, Lcom/android/settings/backup/SyncRootProtos;->-$$Nest$sfgetinternal_static_syncroot_SyncRoot_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    const-class v1, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 101
    iget-byte v0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 105
    :cond_1
    iput-byte v1, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 0

    .line 241
    invoke-static {}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->newBuilder()Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 1

    .line 257
    new-instance p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder-IA;)V

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->newBuilderForType()Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->newBuilderForType()Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 55
    new-instance p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    invoke-direct {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;-><init>()V

    return-object p0
.end method

.method public toBuilder()Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 2

    .line 250
    sget-object v0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->DEFAULT_INSTANCE:Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 251
    new-instance p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    invoke-direct {p0, v1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;-><init>(Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder-IA;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    invoke-direct {v0, v1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;-><init>(Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder-IA;)V

    invoke-virtual {v0, p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;->mergeFrom(Lcom/android/settings/backup/SyncRootProtos$SyncRoot;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->toBuilder()Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->toBuilder()Lcom/android/settings/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget v0, p0, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->getSetting()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
