.class public Lcom/android/settings/locale/LocaleSettingsHelper$AlphabetComparator;
.super Ljava/lang/Object;
.source "LocaleSettingsHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/locale/LocaleSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlphabetComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/locale/LocaleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mCollator:Ljava/text/Collator;

.field private mContext:Landroid/content/Context;

.field private mIsChinese:Z

.field final synthetic this$0:Lcom/android/settings/locale/LocaleSettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/settings/locale/LocaleSettingsHelper;Landroid/content/Context;Z)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/settings/locale/LocaleSettingsHelper$AlphabetComparator;->this$0:Lcom/android/settings/locale/LocaleSettingsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-boolean p3, p0, Lcom/android/settings/locale/LocaleSettingsHelper$AlphabetComparator;->mIsChinese:Z

    .line 135
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/locale/LocaleSettingsHelper$AlphabetComparator;->mCollator:Ljava/text/Collator;

    .line 136
    iput-object p2, p0, Lcom/android/settings/locale/LocaleSettingsHelper$AlphabetComparator;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/locale/LocaleInfo;Lcom/android/settings/locale/LocaleInfo;)I
    .locals 1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-nez p2, :cond_2

    const/4 p0, 0x1

    return p0

    .line 149
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/locale/LocaleSettingsHelper$AlphabetComparator;->mIsChinese:Z

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/android/settings/locale/LocaleSettingsHelper$AlphabetComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/settings/locale/LocaleInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/settings/locale/LocaleSettingsHelper;->-$$Nest$smchinese2PinYin(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/locale/LocaleSettingsHelper$AlphabetComparator;->mContext:Landroid/content/Context;

    .line 151
    invoke-virtual {p2}, Lcom/android/settings/locale/LocaleInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/settings/locale/LocaleSettingsHelper;->-$$Nest$smchinese2PinYin(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 150
    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 153
    :cond_3
    iget-object p0, p0, Lcom/android/settings/locale/LocaleSettingsHelper$AlphabetComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/settings/locale/LocaleInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/settings/locale/LocaleInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 127
    check-cast p1, Lcom/android/settings/locale/LocaleInfo;

    check-cast p2, Lcom/android/settings/locale/LocaleInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/locale/LocaleSettingsHelper$AlphabetComparator;->compare(Lcom/android/settings/locale/LocaleInfo;Lcom/android/settings/locale/LocaleInfo;)I

    move-result p0

    return p0
.end method
