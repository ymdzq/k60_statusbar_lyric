.class final Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat$PresentFormatVerifier;
.super Ljava/lang/Object;
.source "NetworkModeChoicesProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PresentFormatVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 713
    new-instance v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat$PresentFormatVerifier;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat$PresentFormatVerifier;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat$PresentFormatVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 0

    .line 716
    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->forNumber(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
