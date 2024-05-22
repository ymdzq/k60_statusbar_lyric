.class public final Lcom/google/android/setupcompat/logging/MetricKey;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final METRIC_KEY_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final name:Ljava/lang/String;

.field public final screenName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/setupcompat/logging/MetricKey$1;

    .line 2
    invoke-direct {v0}, Lcom/google/android/setupcompat/logging/MetricKey$1;-><init>()V

    .line 4
    sput-object v0, Lcom/google/android/setupcompat/logging/MetricKey;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    const-string v0, "^[a-zA-Z][a-zA-Z0-9_]+"

    .line 9
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 11
    move-result-object v1

    .line 14
    sput-object v1, Lcom/google/android/setupcompat/logging/MetricKey;->METRIC_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 15
    const-string v1, "^([a-z]+[.])+[A-Z][a-zA-Z0-9]+"

    .line 17
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 22
    return-void
    .line 25
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/setupcompat/logging/MetricKey;->name:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/android/setupcompat/logging/MetricKey;->screenName:Ljava/lang/String;

    .line 7
    return-void
    .line 9
.end method

.method public static fromMetricKey(Lcom/google/android/setupcompat/logging/MetricKey;)Landroid/os/Bundle;
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 4
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const-string v1, "MetricKey_version"

    .line 9
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    iget-object v1, p0, Lcom/google/android/setupcompat/logging/MetricKey;->name:Ljava/lang/String;

    .line 15
    const-string v2, "MetricKey_name"

    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Lcom/google/android/setupcompat/logging/MetricKey;->screenName:Ljava/lang/String;

    .line 22
    const-string v1, "MetricKey_screenName"

    .line 24
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-object v0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 30
    const-string v0, "MetricKey cannot be null."

    .line 32
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0
    .line 37
.end method

.method public static get(Ljava/lang/String;Landroid/app/Activity;)Lcom/google/android/setupcompat/logging/MetricKey;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 9
    const/16 v0, 0x1e

    .line 10
    const-string v1, "MetricKey.name"

    .line 12
    const/4 v2, 0x5

    .line 14
    invoke-static {p0, v2, v0, v1}, Lcom/google/android/setupcompat/internal/Validations;->assertLengthInRange(Ljava/lang/String;IILjava/lang/String;)V

    .line 15
    sget-object v0, Lcom/google/android/setupcompat/logging/MetricKey;->METRIC_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 18
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 24
    move-result v0

    .line 27
    const-string v1, "Invalid MetricKey, only alpha numeric characters are allowed."

    .line 28
    invoke-static {v1, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkArgument(Ljava/lang/String;Z)V

    .line 30
    new-instance v0, Lcom/google/android/setupcompat/logging/MetricKey;

    .line 33
    invoke-direct {v0, p0, p1}, Lcom/google/android/setupcompat/logging/MetricKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-object v0
    .line 38
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/setupcompat/logging/MetricKey;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/setupcompat/logging/MetricKey;

    .line 12
    iget-object v1, p0, Lcom/google/android/setupcompat/logging/MetricKey;->name:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/google/android/setupcompat/logging/MetricKey;->name:Ljava/lang/String;

    .line 16
    if-eq v1, v3, :cond_3

    .line 18
    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    goto :goto_0

    .line 28
    :cond_2
    move v1, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_3
    :goto_0
    move v1, v0

    .line 31
    :goto_1
    if-eqz v1, :cond_6

    .line 32
    iget-object p0, p0, Lcom/google/android/setupcompat/logging/MetricKey;->screenName:Ljava/lang/String;

    .line 34
    iget-object p1, p1, Lcom/google/android/setupcompat/logging/MetricKey;->screenName:Ljava/lang/String;

    .line 36
    if-eq p0, p1, :cond_5

    .line 38
    if-eqz p0, :cond_4

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p0

    .line 45
    if-eqz p0, :cond_4

    .line 46
    goto :goto_2

    .line 48
    :cond_4
    move p0, v2

    .line 49
    goto :goto_3

    .line 50
    :cond_5
    :goto_2
    move p0, v0

    .line 51
    :goto_3
    if-eqz p0, :cond_6

    .line 52
    goto :goto_4

    .line 54
    :cond_6
    move v0, v2

    .line 55
    :goto_4
    return v0
    .line 56
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/setupcompat/logging/MetricKey;->name:Ljava/lang/String;

    .line 2
    iget-object p0, p0, Lcom/google/android/setupcompat/logging/MetricKey;->screenName:Ljava/lang/String;

    .line 4
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/setupcompat/logging/MetricKey;->name:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/google/android/setupcompat/logging/MetricKey;->screenName:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    return-void
    .line 12
.end method
