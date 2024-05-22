.class public Landroidx/core/app/RemoteActionCompatParcelizer;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/core/app/RemoteActionCompat;
    .locals 5

    .line 1
    new-instance v0, Landroidx/core/app/RemoteActionCompat;

    .line 2
    invoke-direct {v0}, Landroidx/core/app/RemoteActionCompat;-><init>()V

    .line 4
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 7
    const/4 v2, 0x1

    .line 9
    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;

    .line 10
    move-result-object v1

    .line 13
    check-cast v1, Landroidx/core/graphics/drawable/IconCompat;

    .line 14
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 16
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->mTitle:Ljava/lang/CharSequence;

    .line 18
    const/4 v3, 0x2

    .line 20
    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    .line 21
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    move-object v1, p0

    .line 28
    check-cast v1, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 29
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    iget-object v1, v1, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 33
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/CharSequence;

    .line 39
    :goto_0
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->mTitle:Ljava/lang/CharSequence;

    .line 41
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->mContentDescription:Ljava/lang/CharSequence;

    .line 43
    const/4 v3, 0x3

    .line 45
    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    .line 46
    move-result v3

    .line 49
    if-nez v3, :cond_1

    .line 50
    goto :goto_1

    .line 52
    :cond_1
    move-object v1, p0

    .line 53
    check-cast v1, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 54
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 56
    iget-object v1, v1, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 58
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 63
    check-cast v1, Ljava/lang/CharSequence;

    .line 64
    :goto_1
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->mContentDescription:Ljava/lang/CharSequence;

    .line 66
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->mActionIntent:Landroid/app/PendingIntent;

    .line 68
    const/4 v3, 0x4

    .line 70
    invoke-virtual {p0, v1, v3}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    .line 71
    move-result-object v1

    .line 74
    check-cast v1, Landroid/app/PendingIntent;

    .line 75
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->mActionIntent:Landroid/app/PendingIntent;

    .line 77
    iget-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->mEnabled:Z

    .line 79
    const/4 v3, 0x5

    .line 81
    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    .line 82
    move-result v3

    .line 85
    const/4 v4, 0x0

    .line 86
    if-nez v3, :cond_2

    .line 87
    goto :goto_2

    .line 89
    :cond_2
    move-object v1, p0

    .line 90
    check-cast v1, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 91
    iget-object v1, v1, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 93
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 95
    move-result v1

    .line 98
    if-eqz v1, :cond_3

    .line 99
    move v1, v2

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    move v1, v4

    .line 103
    :goto_2
    iput-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->mEnabled:Z

    .line 104
    iget-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->mShouldShowIcon:Z

    .line 106
    const/4 v3, 0x6

    .line 108
    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    .line 109
    move-result v3

    .line 112
    if-nez v3, :cond_4

    .line 113
    goto :goto_4

    .line 115
    :cond_4
    check-cast p0, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 116
    iget-object p0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 118
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 120
    move-result p0

    .line 123
    if-eqz p0, :cond_5

    .line 124
    goto :goto_3

    .line 126
    :cond_5
    move v2, v4

    .line 127
    :goto_3
    move v1, v2

    .line 128
    :goto_4
    iput-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->mShouldShowIcon:Z

    .line 129
    return-object v0
    .line 131
.end method

.method public static write(Landroidx/core/app/RemoteActionCompat;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 5
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v1}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 8
    invoke-virtual {p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 11
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->mTitle:Ljava/lang/CharSequence;

    .line 14
    const/4 v1, 0x2

    .line 16
    invoke-virtual {p1, v1}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 17
    move-object v1, p1

    .line 20
    check-cast v1, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 21
    iget-object v1, v1, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 23
    const/4 v2, 0x0

    .line 25
    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 26
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->mContentDescription:Ljava/lang/CharSequence;

    .line 29
    const/4 v3, 0x3

    .line 31
    invoke-virtual {p1, v3}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 32
    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 35
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->mActionIntent:Landroid/app/PendingIntent;

    .line 38
    const/4 v2, 0x4

    .line 40
    invoke-virtual {p1, v0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 41
    iget-boolean v0, p0, Landroidx/core/app/RemoteActionCompat;->mEnabled:Z

    .line 44
    const/4 v2, 0x5

    .line 46
    invoke-virtual {p1, v2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 47
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-boolean p0, p0, Landroidx/core/app/RemoteActionCompat;->mShouldShowIcon:Z

    .line 53
    const/4 v0, 0x6

    .line 55
    invoke-virtual {p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 56
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return-void
    .line 62
.end method
