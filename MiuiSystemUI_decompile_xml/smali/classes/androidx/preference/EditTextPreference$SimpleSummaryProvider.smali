.class public final Landroidx/preference/EditTextPreference$SimpleSummaryProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/preference/Preference$SummaryProvider;


# static fields
.field public static sSimpleSummaryProvider:Landroidx/preference/EditTextPreference$SimpleSummaryProvider;


# virtual methods
.method public final provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    check-cast p1, Landroidx/preference/EditTextPreference;

    .line 2
    iget-object p0, p1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    iget-object p0, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 12
    const p1, 0x7f130865    # @string/not_set 'Not set'

    .line 14
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p1, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    .line 22
    :goto_0
    return-object p0
.end method
