.class public Lcom/android/settings/locale/LocaleInfo;
.super Ljava/lang/Object;
.source "LocaleInfo.java"


# instance fields
.field private mCountryCode:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/android/settings/locale/LocaleInfo;->mCountryCode:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/android/settings/locale/LocaleInfo;->mDisplayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/settings/locale/LocaleInfo;->mCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/settings/locale/LocaleInfo;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/android/settings/locale/LocaleInfo;->mDisplayName:Ljava/lang/String;

    return-void
.end method
